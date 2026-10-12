# 一键安装 portrait-retouch 到 Kimi Work（Windows）
# 用法（仓库根目录下）：  powershell -ExecutionPolicy Bypass -File .\install.ps1
$ErrorActionPreference = "Stop"

$src = $PSScriptRoot
$destRoot = Join-Path $env:APPDATA "kimi-desktop\daimon-share\daimon\skills"
if (-not (Test-Path $destRoot)) {
    New-Item -ItemType Directory -Force -Path $destRoot | Out-Null
}
$dest = Join-Path $destRoot "portrait-retouch"

# 排除 .git 和脚本自身所在仓库的临时文件，只拷贝 skill 本体
$exclude = @(".git", "README.md", "install.ps1", "install.sh")
Get-ChildItem -Path $src -Force | Where-Object { $exclude -notcontains $_.Name } | ForEach-Object {
    $target = Join-Path $dest $_.Name
    if (Test-Path $target) { Remove-Item -Recurse -Force $target }
    Copy-Item -Recurse -Force $_.FullName $target
}

Write-Host "portrait-retouch installed to $dest" -ForegroundColor Green
Write-Host "重启 Kimi Work 或新开一个会话后，上传人像照片并说'帮我P图'即可触发。" -ForegroundColor Green
