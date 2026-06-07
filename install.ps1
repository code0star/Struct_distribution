# 1. Configuration Variables
$installerUrl = "https://github.com/code0star/Struct_distribution/releases/latest/download/struct-1.1.0-Setup.exe"
$installerPath = "$env:TEMP\struct-setup.exe"

Write-Host "🚀 Initializing installation for Struct..." -ForegroundColor Cyan

# 2. Download the official Electron Installer
Write-Host "📥 Fetching the production installer executable..." -ForegroundColor Green
try {
    Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath -UserAgent "Mozilla/5.0"
} catch {
    Write-Host "❌ Download failed. Make sure 'struct-1.1.0-Setup.exe' is attached to your latest GitHub release." -ForegroundColor Red
    Exit
}

# 3. Run the installer silently in the background
Write-Host "📦 Launching setup engine..." -ForegroundColor Green
try {
    # The /S or --silent flag runs the Electron/Squirrel installer without showing configuration boxes
    Start-Process -FilePath $installerPath -ArgumentList "/S" -Wait
    Write-Host "✅ Setup successful! Struct has been installed and should open momentarily." -ForegroundColor Cyan
} catch {
    Write-Host "❌ The installer encountered an issue running silently." -ForegroundColor Red
}

# 4. Clean up the installer binary from temporary storage
Remove-Item $installerPath -ErrorAction SilentlyContinue
