import re

with open('style.css', 'r', encoding='utf-8') as f:
    css = f.read()

replacements = {
    'linear-gradient(-45deg, #ed2e33, #8a060a, #ed2e33, #8a060a)': 'linear-gradient(180deg, #d85c87, #b8416d, #d85c87, #b8416d)',
    'rgba(217, 35, 40': 'rgba(233, 79, 133',
    'rgba(255, 193, 7': 'rgba(233, 79, 133',
    '#111;': '#1a060d;',
    '#111111': '#1a060d',
    '#161616': '#200812',
    '#1a1a1a': '#280a14',
    '#171717': '#250811',
    '#000;': '#1f0b12;',
    '#1a1500': 'rgba(233, 79, 133, 0.05)',
    '#1a1600': 'rgba(233, 79, 133, 0.05)',
    '#ef4444': 'var(--primary-pink)',
    '#d92328': 'var(--primary-pink)',
    '#a11418': '#b8416d',
    'rgba(16, 24, 80': 'rgba(158, 31, 72',
    'rgba(20, 30, 100': 'rgba(158, 31, 72'
}

for old, new in replacements.items():
    css = css.replace(old, new)

with open('style.css', 'w', encoding='utf-8') as f:
    f.write(css)

with open('index.html', 'r', encoding='utf-8') as f:
    html = f.read()

html = html.replace('style="color:#000;"', 'style="color:#fff;"')
html = html.replace('style="color: #000;"', 'style="color: #fff;"')

with open('index.html', 'w', encoding='utf-8') as f:
    f.write(html)

print("Theme fully updated.")
