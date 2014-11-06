source ${HOME}/master.vimrc

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set number
set ruler
set cmdheight=2
