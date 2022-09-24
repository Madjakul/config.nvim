" Init file
" This file sources all other files/directories

" Function to source all .vim files in a directory
function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction

call SourceDirectory('$HOME/.config/nvim/general')
call SourceDirectory('$HOME/.config/nvim/autoload')

" Plugins
call SourceDirectory('$HOME/.config/nvim/plugin/plugins')

" Plugin configuration
call SourceDirectory('$HOME/.config/nvim/plugin/plug-config')

" Clipboard
set clipboard=unnamed
