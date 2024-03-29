
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Keep Plugin commands between vundle#begin/end.
"Install other plugins
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" Plugin 'mhinz/vim-signify'

Plugin 'preservim/nerdtree' 
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'frazrepo/vim-rainbow'

Plugin 'bling/vim-bufferline'
Plugin 'tomtom/tcomment_vim'

Plugin 'w0ng/vim-hybrid'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'joshdick/onedark.vim'
Plugin 'kaicataldo/material.vim'

" Plugin 'lifepillar/vim-mucomplete'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'puremourning/vimspector'

Plugin 'sheerun/vim-polyglot'
Plugin 'uiiaoo/java-syntax.vim'
Plugin 'bfrg/vim-cpp-modern'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'voldikss/vim-floaterm'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let g:airline#extensions#tabline#buffer_nr_show = 1 " enable buffer number on tab line 
let g:airline#extensions#tabline#show_buffers = 1 " enable/disable displaying buffers with a single tab
let g:airline#extensions#tabline#enabled = 1	"enable top tabs style
let g:airline_powerline_fonts = 1	        	"enable support for powerline fornt
let g:airline#extensions#whitespace#enabled = 0 "disable traling whitespaces check in bottomright
let g:airline#extensions#branch#enabled=1        "enable git branch
let g:airline#extensions#hunks#enabled = 1

let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal
let g:NERDTreeWinPos = "right"

" let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

" let g:fzf_preview_window = 'right:50%'
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=numbers,changes --line-range :300 {}'"

let g:floaterm_autoclose = 2 " close the popup window when the job exists
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

let g:rainbow_active = 1


" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

:set nowrap
:set completeopt-=preview
:set updatetime=1000

" set termguicolors
"
" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 1
"
" colorscheme tokyonight

" set background=dark
" colorscheme hybrid
"
if (has('termguicolors'))
  set termguicolors
endif

let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1
let g:airline_theme = 'material'

colorscheme material


let mapleader=" " " space as <leader> key

nmap <F12>     :NERDTreeToggle<CR>
nmap <S-F12>   :GitGutterToggle<CR>
nmap gp        :bp<CR>
nmap gn        :bn<CR>
nmap g<Down>   :res -10<CR>
nmap g<Up>     :res +10<CR>
nmap g<Left>   :vertical res +10<CR>
nmap g<Right>  :vertical res -10<CR>
nmap <leader>f :Files<CR>
nmap <leader>F :GFiles<CR>
nmap <leader>l :Buffers<CR>
nmap <leader>t :FloatermToggle<CR>
tmap <F12>     :FloatermToggle<CR>



