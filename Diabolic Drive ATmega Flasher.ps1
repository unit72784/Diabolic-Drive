# flash.ps1 – Diabolic Drive ATmega32U4 uploader (PowerShell 5.1 compatible)

$ErrorActionPreference = "Stop"

function Fatal($msg) {
    Write-Host "`n$msg" -ForegroundColor Red
    Read-Host "`nPress Enter to close..."
    exit 1
}

function ListPorts {
    Get-WmiObject Win32_SerialPort | Select-Object -ExpandProperty DeviceID
}

function TouchReset($port) {
    $serial = New-Object System.IO.Ports.SerialPort($port,1200)
    $serial.DtrEnable = $false
    $serial.Open()
    Start-Sleep -Milliseconds 250
    $serial.Close()
}

# Locate HEX and avrdude
$hexPath = Join-Path $PSScriptRoot "Diabolic-Drive-AVR.hex"
if (-not (Test-Path $hexPath)) {
    Fatal "Diabolic-Drive-AVR.hex not found in this folder."
}

$core = Join-Path $env:LOCALAPPDATA "Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino17"
$avrdude = Join-Path $core "bin\avrdude.exe"
$conf = Join-Path $core "etc\avrdude.conf"

if (-not (Test-Path $avrdude)) {
    Fatal "avrdude.exe not found - check if Diabolic Drive core is installed."
}

# List COM ports
$portsBefore = ListPorts
if ($portsBefore.Count -eq 0) {
    Fatal "No COM ports detected."
}

Write-Host "Available COM ports: "($portsBefore -join ", ") -ForegroundColor Cyan
$sel = Read-Host "Enter Diabolic-Drive COM port (Example: COM81 or 81)"

if ($sel.ToUpper().StartsWith("COM")) {
    $runPort = $sel.ToUpper()
} else {
    $runPort = "COM$sel"
}

# 1200-bps reset
Write-Host "Touching $runPort @1200 bps..." -ForegroundColor Yellow
try {
    TouchReset $runPort
} catch {
    Fatal ("Could not open port {0}: {1}" -f $runPort, $_.Exception.Message)
}

Start-Sleep -Seconds 3

$portsAfter = ListPorts
$newPorts = $portsAfter | Where-Object { $_ -notin $portsBefore }

if ($newPorts.Count -ge 1) {
    $bootPort = $newPorts | Select-Object -First 1
} else {
    $bootPort = $portsAfter | Sort-Object { [int]($_ -replace '\D','') } -Descending | Select-Object -First 1
}

Write-Host "Bootloader port → $bootPort" -ForegroundColor Green

# Run avrdude
$args = @(
    "-C", "$conf",
    "-v",
    "-patmega32u4", "-cavr109",
    "-P$bootPort", "-b57600", "-D",
    "-Uflash:w:`"$hexPath`":i"
)

Write-Host "`nFlashing..." -ForegroundColor Cyan
$proc = Start-Process -FilePath $avrdude -ArgumentList $args -NoNewWindow -Wait -PassThru

if ($proc.ExitCode -eq 0) {
    Write-Host "`nFlash finished successfully." -ForegroundColor Green
} else {
    Write-Host ("`navrdude exited with code {0}." -f $proc.ExitCode) -ForegroundColor Red
}

Read-Host "`nPress Enter to close..."
