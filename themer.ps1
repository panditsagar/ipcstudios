$css = Get-Content 'style.css' -Raw

$css = $css -replace '--primary-yellow', '--primary-pink'
$css = $css -replace '#ffc107', 'var(--primary-pink)'
$css = $css -replace '#1a1500', 'rgba(233, 79, 133, 0.05)'
$css = $css -replace '#1a1600', 'rgba(233, 79, 133, 0.05)'
$css = $css -replace '#111(?![0-9a-fA-F])', '#1a060d'
$css = $css -replace '#111111', '#1a060d'
$css = $css -replace '#161616', '#200812'
$css = $css -replace '#1a1a1a', '#280a14'
$css = $css -replace '#171717', '#250811'
$css = $css -replace '#000(?![0-9a-fA-F])', '#1f0b12'
$css = $css -replace '#000000', '#1f0b12'
$css = $css -replace '#ef4444', 'var(--primary-pink)'
$css = $css -replace '#d92328', 'var(--primary-pink)'
$css = $css -replace '#a11418', '#b8416d'
$css = $css -replace 'rgba\s*\(\s*16\s*,\s*24\s*,\s*80', 'rgba(158, 31, 72'
$css = $css -replace 'rgba\s*\(\s*20\s*,\s*30\s*,\s*100', 'rgba(158, 31, 72'
$css = $css -replace 'rgba\s*\(\s*217\s*,\s*35\s*,\s*40', 'rgba(233, 79, 133'
$css = $css -replace 'rgba\s*\(\s*255\s*,\s*193\s*,\s*7', 'rgba(233, 79, 133'
$css = $css -replace 'linear-gradient\(-45deg, #ed2e33, #8a060a, #ed2e33, #8a060a\)', 'linear-gradient(180deg, #d85c87, #b8416d, #d85c87, #b8416d)'

$css = $css -replace '(?s):root\s*\{.*?\}', ':root {
  --primary-pink: #e94f85;
  --bg-dark: #1f0b12;
  --text-main: #ffffff;
  --red-cta: #e94f85;
  --red-cta-dark: #9e1f48;
  --red-icon-color: #e94f85;
}'

$css = $css -replace '(?s)body\s*\{(.*?)\}', 'body {
  background-color: var(--bg-dark);
  color: var(--text-main);
  background: radial-gradient(circle at center top, #4a1525 0%, #1f0b12 100%);
  background-attachment: fixed;
  min-height: 100vh;
}'

Set-Content -Path 'style.css' -Value $css -NoNewline

$html = Get-Content 'index.html' -Raw
$html = $html -replace 'style="color:#000;"', 'style="color:#fff;"'
$html = $html -replace 'style="color: #000;"', 'style="color: #fff;"'
Set-Content -Path 'index.html' -Value $html -NoNewline

Write-Host "Theme fully updated via PowerShell."
