" Do not use smart case in command line mode, extracted from https://vi.stackexchange.com/a/16511/15292.
augroup dynamic_smartcase
  autocmd!
  autocmd CmdLineEnter : set nosmartcase
  autocmd CmdLineLeave : set smartcase
augroup END

augroup term_settings
  autocmd!
  " Do not use number and relative number for terminal inside nvim
  autocmd TermOpen * setlocal norelativenumber nonumber
  " Go to insert mode by default to start typing command
  autocmd TermOpen * startinsert
augroup END

" ref: https://vi.stackexchange.com/a/169/15292
function! s:handle_large_file() abort
  let g:large_file = 10485760 " 10MB
  let f = expand("<afile>")

  if getfsize(f) > g:large_file || getfsize(f) == -2
    set eventignore+=all
    " turning off relative number helps a lot
    set norelativenumber
    setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1
  endif
endfunction

augroup LargeFile
  autocmd!
  autocmd BufReadPre * call s:handle_large_file()
augroup END

" Open terminal at the bottom
autocmd VimEnter * below terminal

