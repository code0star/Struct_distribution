# 1. Configuration Variables
$zipUrl = "https://github.com/code0star/Struct_distribution/releases/latest/download/Struct.zip"
$installDir = "$env:USERPROFILE\AppData\Local\Struct"
$zipPath = "$env:TEMP\Struct.zip"
$exeName = "Struct.exe" # ⚠️ Update this if your executable has a different filename

Write-Host "🚀 Initializing installation for Struct..." -ForegroundColor Cyan

# 2. Clean up any prior installation assets safely
if (Test-Path $installDir) {
    Remove-Item -Recurse -Force $installDir
}
New-Item -ItemType Directory -Force -Path $installDir | Out-Null

# 3. Stream down the latest release payload
Write-Host "📥 Fetching latest production build..." -ForegroundColor Green
try {
    Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath -UserAgent "Mozilla/5.0"
} catch {
    Write-Host "❌ Failed to download the package. Verify that a release asset named 'Struct.zip' exists." -ForegroundColor Red
    Exit
}

# 4. Extract binaries locally
Write-Host "📦 Unpacking application assets..." -ForegroundColor Green
Expand-Archive -Path $zipPath -DestinationPath $installDir -Force
Remove-Item $zipPath

# 5. Provision the Desktop Shortcut
Write-Host "🖥️ Provisioning desktop shortcut..." -ForegroundColor Green
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:USERPROFILE\Desktop\Struct.lnk")
$Shortcut.TargetPath = "$installDir\$exeName"
$Shortcut.WorkingDirectory = $installDir
$Shortcut.Save()

Write-Host "✅ Setup successful! You can now launch Struct directly from your desktop." -ForegroundColor Cyan
