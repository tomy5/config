"文字コードをutf-8にする
set fenc=utf-8
"バックアップを作成しない
set nobackup
set nowritebackup
"スワップファイルを作成しない
set noswapfile
"自動再読込み
set autoread
"OSとクリップボードを共有する
set clipboard=unnamed,autoselect
"括弧の対応をハイライト
set showmatch
"入力中のコマンドを表示する
set showcmd
"マウスを有効にする
set mouse=a
"行番号を表示する
set number
"行末の位置文字先までカーソルを移動できるようにする
set virtualedit=onemore
"ビープ音可視化
set visualbell
"スマートインデント
set smartindent
"自動インデントでずれる幅
set shiftwidth=4
set laststatus=2
"画面上でタブが占める割合
set tabstop=4
" 改行時に前の行のインデントを継続
set autoindent
set title

syntax on

" カラースキーム
colorscheme jellybeans

" indent_guides
let g:indent_guides_enable_on_vim_startup = 1

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
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('nathanaelkane/vim-indent-guides')

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
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
