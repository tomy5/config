all: vimrc bash_aliases
	cp vimrc ~/.vimrc && cp bash_aliases ~/.bash_aliases
vimrc: vimrc
	cp vimrc ~/.vimrc
alias: bash_aliases
	cp bash_aliases ~/.bash_aliases
