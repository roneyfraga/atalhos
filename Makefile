file=atalhos

all:
	quarto render $(file).qmd 
	rsync -r -a -v --info=progress2 -e ssh $(file).pdf bibr@159.89.36.185:/var/www/roneyfraga.com/public_html/volume/

qr:
	quarto render $(file).qmd

qp:
	quarto preview $(file).qmd

rsync:
	rsync -r -a -v --info=progress2 -e ssh $(file).pdf bibr@159.89.36.185:/var/www/roneyfraga.com/public_html/volume/
