set term=xterm-256color

colorscheme dracula                                                             
syntax on
                                                                                
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

if has("autocmd")                                                               
    filetype plugin indent on                                                   
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab  
endif                                                                           

set mouse=a

set hlsearch
set incsearch
set ignorecase
set smartcase

set cursorline
highlight CursorLine ctermbg=NONE
                                                                                
set number 

set scrolloff=5
