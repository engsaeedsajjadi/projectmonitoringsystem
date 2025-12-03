@'
FROM python:3.11-slim

WORKDIR /app

# نصب وابستگی‌های سیستم
RUN apt-get update && apt-get install -y \
    gcc \
    g++ \
    libsqlite3-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# کپی requirements.txt
COPY requirements.txt .

# نصب پکیج‌ها
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# کپی تمام فایل‌ها
COPY . .

# ایجاد دایرکتوری‌های لازم
RUN mkdir -p /app/static /app/data

# تغییر مالکیت برای Liara
RUN chown -R 1001:1001 /app

# کاربر غیر root
USER 1001

# پورت
EXPOSE 8000

# اجرا
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
'@ | Out-File -FilePath "Dockerfile.liara" -Encoding UTF8