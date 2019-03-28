NAME = resume
SRC = $(NAME).mom
MAC_PAC = -mom

view: build
	zathura $(NAME).pdf

build: resume.pdf

clean:
	rm -f $(NAME).pdf


$(NAME).pdf: *.mom
	groff $(MAC_PAC) -Tps $(NAME).mom | ps2pdf - > $(NAME).pdf
