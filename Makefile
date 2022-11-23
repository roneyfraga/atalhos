file=atalhos

qr:
	quarto render $(file).qmd 

all:
	quarto render $(file).qmd 
	rsync -avzhe "ssh -i ~/.chave/chave_limpa" --info=progress2 $(file).pdf bibr@159.89.36.185:/var/www/roneyfraga.com/public_html/volume/

qp:
	quarto preview $(file).qmd

rsync:
	rsync -avzhe "ssh -i ~/.chave/chave_limpa" --info=progress2 $(file).pdf bibr@159.89.36.185:/var/www/roneyfraga.com/public_html/volume/
