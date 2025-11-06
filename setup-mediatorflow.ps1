# MediatorFlow AI Setup - Windows Edition
# Save in: C:\Users\Asha\oss-guru-mediatorflow-ai\setup-mediatorflow.ps1

Write-Host "Setting up MediatorFlow AI Swarm... (Chennai Pioneer Mode)" -ForegroundColor Green

# Base directory
$baseDir = "C:\Users\Asha\oss-guru-mediatorflow-ai"
Set-Location $baseDir

# Create directories
$dirs = @(
    "swarm-brain\model"
    "swarm-brain\serve"
    "dashboard\src"
    "dashboard\public"
    "migrations"
    "demo\simulator"
    "demo\scripts"
    "k8s"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
    Write-Host "Created: $dir" -ForegroundColor Yellow
}

# Create empty files
$files = @(
    "README.md"
    "docker-compose.yml"
    "requirements.txt"
    ".gitignore"
    "swarm-brain\model\gravity_gnn.py"
    "swarm-brain\serve\deploy.py"
    "dashboard\src\App.js"
    "dashboard\public\index.html"
    "migrations\zero_downtime.py"
    "demo\simulator\ipl_cdr_gen.py"
    "demo\scripts\run_demo.sh"
    "k8s\scaledjob.yaml"
    "k8s\networkpolicy.yaml"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force | Out-Null
    Write-Host "Created: $file" -ForegroundColor Cyan
}

# README content - PERFECTLY FORMATTED @"" BLOCK
$readmeContent = @"
# MediatorFlow AI: Self-Migrating Mediation Swarm

![Pioneer](pioneer-animated.svg)  
*Chennai-Built | Open Source | 5G-Ready OSS for Telecom*

> **"We don't chase data. Data chases *us*."**  
> — OSS Ninjas, Chennai DC, 2025

## Quickstart
```powershell
docker-compose up -d
python demo\simulator\ipl_cdr_gen.py