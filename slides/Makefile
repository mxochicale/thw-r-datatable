SLIDES := $(patsubst %.md,%.md.slides.pdf,$(wildcard *.md))

all : 	$(SLIDES)

%.md.slides.pdf : %.md
	pandoc $^ -t beamer --slide-level 2 --template themes/mx.beamer -o $@


	#pandoc $^ -t beamer --slide-level 2 --template themes/novel.tex -o $@



clean : 
	rm -f $(SLIDES)
