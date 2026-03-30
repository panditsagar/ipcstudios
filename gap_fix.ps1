$css = Get-Content 'style.css' -Raw
$css = $css.Replace("padding: 5.5rem 0;", "padding: 3rem 0;")
$css = $css.Replace("padding-top: 5rem;", "padding-top: 3rem;")
Set-Content -Path 'style.css' -Value $css -NoNewline

$html = Get-Content 'index.html' -Raw
$html = $html.Replace("padding-top: 5rem;", "padding-top: 3.5rem;")
Set-Content -Path 'index.html' -Value $html -NoNewline

Write-Host "Section gaps decreased."
