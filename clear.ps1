# 设置当前目录为工作目录
$directoryPath = "."

# 定义需要删除的文件扩展名列表
$fileExtensions = @(
    "*.aux", "*.log", "*.out", "*.synctex.gz",
    "*.bak", "*.bbl", "*.blg", "*.dvi", "*.fdb_latexmk", "*.fls", "*.lof", "*.lot", "*.nav", "*.snm", "*.vrb", "*.xdv")

# 遍历扩展名，删除对应的文件
foreach ($ext in $fileExtensions) {
    Get-ChildItem -Path $directoryPath -Filter $ext -File | Remove-Item -Force
    # Get-ChildItem -Path $directoryPath -Filter $ext -File -Recurse | Remove-Item -Force
}

Write-Host "delete over"
