import re

with open('style.css', 'r', encoding='utf-8') as f:
    css = f.read()

# Replace global variable
css = css.replace('--primary-yellow', '--primary-pink')

# Replace root
root_pattern = re.compile(r':root\s*\{[^}]+\}')
new_root = """:root {
  --primary-pink: #e94f85;
  --bg-dark: #1f0b12;
  --text-main: #ffffff;
  --red-cta: #d13a69;
  --red-cta-dark: #9e1f48;
  --red-icon-color: #e94f85;
}"""
css = root_pattern.sub(new_root, css)

# Replace body
body_pattern = re.compile(r'body\s*\{[^}]+\}')
new_body = """body {
  background-color: var(--bg-dark);
  color: var(--text-main);
  background: radial-gradient(circle at center top, #360f1b 0%, #1f0b12 100%);
  background-attachment: fixed;
  min-height: 100vh;
}"""
css = body_pattern.sub(new_body, css)

# Replace all occurrences of the old yellow exact hex code with the new pink var just in case
css = css.replace('#ffc107', 'var(--primary-pink)')

# Also replace the brownish card background #1a1600 with a dark pinkish tint for better blending
css = css.replace('#1a1600', 'rgba(233, 79, 133, 0.05)')
# Replace the dark grey background #111 with a dark burgundy tint
css = css.replace('#111', '#17060c')
# Replace #161616 with dark burgundy
css = css.replace('#161616', '#1a060d')

with open('style.css', 'w', encoding='utf-8') as f:
    f.write(css)
