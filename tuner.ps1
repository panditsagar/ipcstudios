$css = Get-Content 'style.css' -Raw

# 1. Section Breathing Room
$css = $css.Replace("padding: 3rem 0;", "padding: 5.5rem 0;")
$css = $css.Replace("margin-bottom: 2.5rem;", "margin-bottom: 3.5rem;")

# 2. Section Heading Sizes (3.4 is too massive on desktop, reducing slightly for elegance)
$css = $css.Replace("font-size: 3.4rem;", "font-size: 2.9rem;")
$css = $css.Replace("font-size: 3.6rem;", "font-size: 2.9rem;")

# 3. Soften Borders (more feminine feel for masterclass)
$css = $css.Replace("border-radius: 12px;", "border-radius: 16px;")
$css = $css.Replace("border-radius: 8px;", "border-radius: 12px;")

# 4. Grid and Card Spacing
$css = $css.Replace("gap: 1.5rem;", "gap: 2.5rem;")
$css = $css.Replace("padding: 1rem 1rem;", "padding: 1.5rem 1.8rem;")
$css = $css.Replace("padding: 1.2rem;", "padding: 2rem 1.5rem;")
$css = $css.Replace("padding: 2rem;", "padding: 2.5rem;")

# 5. Font Readability Tweaks
$css = $css.Replace("font-size: 1rem;", "font-size: 1.05rem;")
$css = $css.Replace("font-size: 0.95rem;", "font-size: 1.05rem;")
$css = $css.Replace("font-size: 1.2rem;", "font-size: 1.35rem;")

# 6. Button Padding (bigger, more clickable)
$css = $css.Replace("padding: 1rem 2rem;", "padding: 1.3rem 3rem;")

Set-Content -Path 'style.css' -Value $css -NoNewline

# Hero Section Inline Tweaks
$html = Get-Content 'index.html' -Raw
$html = $html.Replace("font-size: 3.5rem;", "font-size: 3.2rem;")
$html = $html.Replace("font-size: 1.8rem;", "font-size: 1.5rem;")
$html = $html.Replace("font-size: 1rem; line-height: 1.5;", "font-size: 1.15rem; line-height: 1.6;")
$html = $html.Replace("gap: 1.5rem;", "gap: 2.5rem;")
$html = $html.Replace("padding-top: 3rem;", "padding-top: 5rem;")

Set-Content -Path 'index.html' -Value $html -NoNewline

Write-Host "Typography and spacing successfully tuned."
