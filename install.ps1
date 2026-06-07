# 1. Configuration Variables
$installerUrl = "https://github.com/code0star/Struct_distribution/releases/latest/download/struct-1.1.0-Setup.exe"
$installerPath = "$env:TEMP\struct-setup.exe"

Write-Host "🚀 Initializing installation for Struct..." -ForegroundColor Cyan

# 2. Download the official Electron Installer
Write-Host "📥 Fetching production installer binaries..." -ForegroundColor Green
try {
    Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath -UserAgent "Mozilla/5.0"
} catch {
    Write-Host "❌ Download failed. Make sure 'struct-1.1.0-Setup.exe' is attached to your latest GitHub release." -ForegroundColor Red
    Exit
}

# 3. Launch the native Squirrel installer package
Write-Host "📦 Initializing Squirrel engine components..." -ForegroundColor Green
try {
    # We execute without flags to let Squirrel run its light native setup animation safely
    Start-Process -FilePath $installerPath
    Write-Host "✅ Deployment initiated! The installation wrapper is processing." -ForegroundColor Cyan
} catch {
    Write-Host "❌ The system framework failed to launch the application binary." -ForegroundColor Red
}
