" Pathogen for plugin management
execute pathogen#infect()
syntax on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
filetype plugin indent on

" PLUGINS USED
  " nerdtree (traverse the dir tree)
  " nerdcommenter (for commenting/uncommenting lines with ease)
  " buffkill (deletes buffers when I don't need them open anymore)
  " command-t (file searcher)
  " ag (text search within repo)
  " vim-endwise (adds `end` to new method/if/do and inserts you inside the
  "   block)
  " vim-ruby (ruby syntax highlighting)
  " vim-slim (slim syntax highlighting)

" Set Leader key
let mapleader = ","

" NERDTree shortcuts
map <leader>n :NERDTreeToggle<cr>

" Buffkill plugin shortcut
map <leader>d :BD<cr>

"Custom shortcuts
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>
map <leader><Tab> <C-W><C-W>
:nmap ; :
set number
set runtimepath^=~/.vim/bundle/ag
set hlsearch

" CommandT faster file scanner
let g:CommandTFileScanner = 'watchman'

" CommandT map to CTRL P... because I'm used to typing that for file search
:nmap <C-P> :CommandT<cr>



" Tab auto-completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-n>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
