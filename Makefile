LT_DL=https://languagetool.org/download/LanguageTool-2.8.zip
LT_FOLDER=~/lt
LT=~/lt/LanguageTool-2.8/languagetool-commandline.jar

all:
	latexmk

clean:
	latexmk -C

grammar_check:
	java -jar $(LT) -r tex

fetch_grammar_check:
	wget $(LT_DL) -O $(LT_FOLDER).zip
	unzip $(LT_FOLDER).zip -d $(LT_FOLDER)
