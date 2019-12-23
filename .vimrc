set nocompatible "be IMproved
filetype off

"//Set PATH to include Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
"//

"//Initialize Vundle
call vundle#begin()

"//Plugins
Plugin 'VundleVim/Vundle.vim'

Plugin 'NLKNguyen/papercolor-theme' 		"Plugin for the colorscheme

Plugin 'ycm-core/YouCompleteMe' 				"AutoCompletion (mainly for python and sematic C's)

Plugin 'scrooloose/nerdtree'						"Nerdtree plugin

Plugin 'junegunn/fzf.vim'								"fuzzy finder

Plugin 'itchyny/lightline.vim'					"better visual bar

Plugin 'terryma/vim-multiple-cursors'		"multiple cursors plugin

Plugin 'morhetz/gruvbox'								"Gruvbox colorscheme

Plugin 'w0ng/vim-hybrid'								"hybrid colorscheme

Plugin 'challenger-deep-theme/vim'			"challeger_deep colorscheme

Plugin 'vim-latex/vim-latex'						"Vim LateX editor plugin

Plugin 'lervag/vimtex'									"Syntax Highlighting for LateX

Plugin 'xuhdev/vim-latex-live-preview'	"Live latex preview
"//

"//End Vundle
call vundle#end()
filetype plugin on
"//

"LATEX:
" DEFINE firefox as the primary pdf-viewer cause Okular looks like trash
"let g:livepreview_previewer = 'firefox'

"//Give clang the control
"let g:ycm_clang_uses_ycmd_caching = 0
"//Use the system's own Clang !!!
"let g:ycm_clang_binary_path = exepath("clang")

"//YCM specific

"close preview after autocompletion
"let g:ycm_autoclose_preview_window_after_insertion=1

"//

colorscheme PaperColor		"//colorscheme

"//SET Options
set foldmethod=syntax	 					"enable manual codefolding
set nofoldenable								"no prefolding
set	number											"Show linenumbers (gets overwritten by relativenumber tho)
set cursorline									"Highlight current row
set background=dark 						"darkBG
set t_Co=256									"Terminal Coloring to 256
set relativenumber 							"LineNumbers
set tabstop=2										"tabstop = x
set shiftwidth=2								"shiftwidth = x
set noexpandtab									"don't expand tabs by default
set autoindent									"autoindent on
set showmode										"Always display editing mode
set smartcase 									"ignore case if search pattern is all LOWER						
set wrap												"wrap lines
set mouse=v											"set mouse on visual-mode only
set visualbell									"no beeps ffs
set hlsearch										"set highlighted search

"//syntax on
syntax on
"//custom KEYBINDS
nnoremap <SPACE> zo

"//Python specific options:
autocmd filetype python set ts=4 | set sw=4 | set et
au bufenter *.py set ai sw=4 ts=4 sta et fo=croql
"//

"//Force syntax highligthing on cpp programs with some colorschemes
autocmd filetype cpp set syntax=cpp
"

"//Turn arduino syntax on with ':ar'
cnoreabbrev <expr> ar getcmdtype() == ":" && getcmdline() == "ar" ? "set syntax=arduino" : "ar"
"//
