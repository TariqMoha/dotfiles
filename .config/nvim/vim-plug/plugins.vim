" auto install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
   autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto Pair for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " ReMap ESC Key to jk kj
    Plug 'zhou13/vim-easyescape'
    " onedark theme
    Plug 'joshdick/onedark.vim'
    " Stable Version of COC
    Plug 'neoclide/coc.nvim', {'branch' : 'release'}
    " Vim Commentary
    Plug 'tpope/vim-commentary'
    " Airline Plug & Themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " fzf & vim-rooter Plugs
    Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Vim Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " Startify
    Plug 'mhinz/vim-startify'
    " Whick Key
    Plug 'liuchengxu/vim-which-key'
    " File Type Icon
    Plug 'ryanoasis/vim-devicons'
    " Snippets
    Plug 'honza/vim-snippets'
    " GitGutter for modifing indecator
    Plug 'airblade/vim-gitgutter'

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|  PlugInstall --sync | q
  \| endif
