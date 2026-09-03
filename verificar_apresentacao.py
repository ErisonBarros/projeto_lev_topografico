from pathlib import Path
from urllib.parse import urljoin

base = Path('aulas/automação Topográfica/apresentacao_completa')
slides = sorted(base.glob('s*.html'))
assert len(slides) == 31, f'Quantidade de slides inesperada: {len(slides)}'
index = (base / 'index.html').read_text(encoding='utf-8')
assert 's01_titulo.html' in index and 's31_desafio.html' in index
assert index.count(".html'") == 31, 'O índice não referencia os 31 slides.'
for slide in slides:
    text = slide.read_text(encoding='utf-8')
    assert 'Projeto de Levantamento Topográfico · UFPE / LABAT' in text, f'Rodapé ausente: {slide.name}'
    assert '<svg' not in text.lower(), f'SVG inline encontrado: {slide.name}'
for asset in ['topografia_hero.png', 'field_technology.png', 'data_to_map.png']:
    assert (base / asset).is_file(), f'Asset ausente: {asset}'
print(f'OK: {len(slides)} slides, índice navegável, 3 assets e rodapés verificados.')
