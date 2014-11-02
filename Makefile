TARGETS = bigdata-talk_video.pdf
LATEXMK = latexmk -recorder -use-make

all : $(TARGETS)
pdf: all

%.pdf : %.tex bigdata-talk_text.tex
	$(LATEXMK) -pdf $<
