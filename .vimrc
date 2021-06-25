" Pathogen for plugin management
execute pathogen#infect()
syntax on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
filetype plugin indent on

" PLUGINS USED
  " nerdtree (traverse the dir tree) https://github.com/preservim/nerdtree
  " nerdcommenter (for commenting/uncommenting lines with ease) https://github.com/preservim/nerdcommenter
  " buffkill (deletes buffers when I don't need them open anymore) https://github.com/qpkorr/vim-bufkill
  " command-t (file searcher)
  " ag (text search within repo) https://github.com/ggreer/the_silver_searcher
  " vim-endwise (adds `end` to new method/if/do and inserts you inside the
  "   block) https://github.com/tpope/vim-endwise
  " vim-ruby (ruby syntax highlighting) https://github.com/vim-ruby/vim-ruby/blob/master/INSTALL.markdown
  " vim-slim (slim syntax highlighting) https://github.com/slim-template/vim-slim
set ignorecase smartcase
set incsearch
" Set Leader key
let mapleader = ","

" NERDTree shortcuts
map <leader>n :NERDTreeToggle<cr>

" Buffkill plugin shortcut
map <leader>d :BD<cr>
map <leader>/ :noh<cr>

"Custom shortcuts
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>
map <leader><Tab> <C-W><C-W>
:nmap ; :
set number
set runtimepath^=~/.vim/bundle/ag
set hlsearch

" FZF to CTRL P... because I'm used to typing that for file search
:nmap <C-P> :FZF<cr>

" FZF installed via Homebrew
set rtp+=/usr/local/opt/fzf

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

" Create a ~/.vim/swapfiles directory, doesn't come out of the box.
:set directory=$HOME/.vim/swapfiles//
