augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat | Neoformat! python isort | Neoformat! python docformatter
augroup END
