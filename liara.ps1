@'
{
  "platform": "docker",
  "port": 8000,
  "app": "project-monitoring-system",
  "image": {
    "name": "project-monitoring"
  }
}
'@ | Out-File -FilePath "liara.json" -Encoding UTF8