# PowerShell スクリプト - copy-waternormals.ps1

# ルートディレクトリにある waternormals.jpg のパス
$sourceFile = ".\waternormals.jpg"

# コピー先ディレクトリ（node_modules\three\examples\textures）
$targetDir = ".\node_modules\three\examples\textures"

# コピー先ファイルパス
$targetFile = "$targetDir\waternormals.jpg"

# コピー先ディレクトリが存在しなければ作成する
if (!(Test-Path $targetDir)) {
    Write-Host "Creating directory: $targetDir"
    New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
}

# waternormals.jpg をコピーする
if (Test-Path $sourceFile) {
    Copy-Item -Path $sourceFile -Destination $targetFile -Force
    Write-Host "File copied successfully to $targetFile"
} else {
    Write-Host "Source file not found: $sourceFile"
}
