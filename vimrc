autocmd FileType python set breakindentopt=shift:4

:filetype plugin on
:syntax on

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler

set mouse=a

set whichwrap=b,s,<,>,[,]

:set number
:set spell

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END


