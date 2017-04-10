set nocompatible                    "use vim and not v settings, must be first as has side efects
set number                          "add line numbers
set wildmode=list:longest           "make cmdline tab completion similar to bash
set wildmenu                        "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~         "stuff to ignore when tab completing
set updatetime=300                  "repaint
set backspace=indent,eol,start      "allow backspacing over everything in insert mode
set history=1000                    "store lots of :cmdline history
set showcmd                         "show incomplete cmds down the bottom
set showmode                        "show current mode down the bottom
set incsearch                       "find the next match as we type the search
set hlsearch                        "hilight searches by default
set showbreak=...                   "wrapping indicator
set list                            "show space chars
set listchars=tab:»⋅,trail:⋅,nbsp:⋅ "chars to indicate spaces
set wrap                            "dont wrap lines
set linebreak                       "wrap lines at convenient points
set visualbell t_vb=                "disable visual bell
set guioptions-=T                   "turn off needless toolbar on gvim/mvim
set hidden                          "hide buffers when not displayed

"cursor
set cursorline
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=darkred guifg=white

"folding settings
set foldmethod=indent               "fold based on indent
set foldnestmax=3                   "deepest fold is 3 levels
set nofoldenable                    "dont fold by default

"indent settings
set shiftwidth=4
set softtabstop=4
set expandtab
set noautoindent

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"turn on syntax highlighting
syntax on

"load ftplugins and indent files
filetype plugin on
filetype indent on

"mapping for command key to map navigation thru display lines instead of just numbered lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

"try to make possible to navigate within lines of wrapped lines
nmap <Down> gj
nmap <Up> gk
set fo=l

"key mapping for vimgrep result navigation
map <A-o> :copen<CR>
map <A-q> :cclose<CR>
map <A-j> :cnext<CR>
map <A-k> :cprevious<CR>

"undo settings
if v:version >= 703
    set undodir=~/.vim/undofiles
    set undofile

    set colorcolumn=+1 "mark the ideal max text width
    highlight ColorColumn ctermbg=237
endif

if !has('gui_running')
  set t_Co=256
endif

let g:FeatherLineScheme = 'bubblegun'