"文字コードをutf-8にする
"set fenc=utf-8
"バックアップを作成しない
"set nobackup
"set nowritebackup
"スワップファイルを作成しない
"set noswapfile
"自動再読込み
"set autoread
"括弧の対応をハイライト
"set showmatch
"入力中のコマンドを表示する
"set showcmd
"行末の位置文字先までカーソルを移動できるようにする
"set virtualedit=onemore
"ビープ音可視化
"set visualbell
"スマートインデント
"set smartindent
"自動インデントでずれる幅
"set shiftwidth=4
"set laststatus=2
"画面上でタブが占める割合
"set tabstop=4
" 改行時に前の行のインデントを継続
"set autoindent

"---
augroup BinaryXXD
	autocmd!
	autocmd BufReadPre *.bin let &binary =1
	autocmd BufReadPost * if &binary | silent %!xxd -g 1
	autocmd BufReadPost * set ft=xxd | endif
	autocmd BufWritePre * if &binary | %!xxd -r | endif
	autocmd BufWritePost * if &binary | silent %!xxd -g 1
	autocmd BufWritePost * set nomod | endif
augroup END
"---

set title
set number "行番号を表示
set encoding=utf-8
set mouse=a "マウスを有効
set clipboard=unnamed,autoselect "OSとクリップボードを共有

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/unite.vim')
  call dein#add('dracula/vim')
  call dein#add('gosukiwi/vim-atom-dark')
  call dein#add('jacoborus/tender.vim')
  call dein#add('jdkanani/vim-material-theme')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('Shougo/vinarise.vim')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"set background=dark
syntax on
"colorscheme hybrid
"colorscheme material-theme
color dracula
set termguicolors " これで背景が適応された https://github.com/dracula/vim/issues/96
