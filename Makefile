
default: publish

preview:
	quarto preview -p 4444

build:
	quarto render

publish: build
	rsync -avz _site/* anandology.com:/var/www/anandology.com/practical-computing/