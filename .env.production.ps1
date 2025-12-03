@'
SECRET_KEY=your-very-strong-secret-key-here-change-this-123456
ENVIRONMENT=production
ALLOWED_ORIGINS=https://project-monitoring-system.liara.run,http://localhost:8000
ALLOWED_HOSTS=project-monitoring-system.liara.run,localhost,127.0.0.1
DEFAULT_ADMIN_USER=admin
DEFAULT_ADMIN_PASSWORD=ChangeThisPassword123!
DATABASE_URL=sqlite:////app/projects.db
'@ | Out-File -FilePath ".env.production" -Encoding UTF8