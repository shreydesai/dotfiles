execute pathogen#infect()

" Colors
set term=xterm-256color

" Theme
colorscheme dracula                                                             
                                                                                
" Tabs
set tabstop=2       " The width of a TAB is set to 4.                           
                    " Still it is a \t. It is just that                         
                    " Vim will interpret it to be having                        
                    " a width of 4
set shiftwidth=2    " Indents will have a width of 4.                           
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to space
set autoindent      " Copy indent from previous line

if has("autocmd")                                                               
    " Use filetype detection
    filetype plugin indent on                                                   
                                                                                
    " Use actual tab chars in Makefiles.                                        
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab  
endif                                                                           
                                                                                
" Column of 80 characters
set colorcolumn=80                                                              
highlight ColorColumn ctermbg=DarkGray
                                                                                
" Highlight chars over 80 characters
highlight OverLength ctermbg=Red ctermfg=White guibg=#592929                    
match OverLength /\%81v.\+/                                                     

" Mouse
set mouse=a

" Search
set hlsearch
set incsearch
set ignorecase      " Ignores case while searching
set smartcase       " Overrides ignorecase for uppercase searches

" Highlight cursor line
set cursorline
highlight CursorLine ctermbg=NONE
                                                                                
" Line numbers
set number 

" Scroll when near bottom
set scrolloff=5

" Ctrl+P plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" File system plugins
" autocmd vimenter * NERDTree
map fs :NERDTree<CR>
map <c-e> :TagbarToggle<CR>

" Tab pages
highlight TabLineSel ctermfg=White ctermbg=234
highlight TabLine ctermfg=252 ctermbg=234 cterm=NONE
highlight TabLineFill ctermfg=234
map tn :tabnext<CR>
map tp :tabprev<CR>
map tc :tabclose<CR>
map te :tabedit 

" Word count
map wc :! wc -m %<CR>
