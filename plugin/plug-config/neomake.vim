let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_cpp_enable_makers = ['clang']
let g:neomake_cpp_clang_maker = {
    \ 'args': ['-std=c++14', '-Wall', '-Wextra', '-Weverything', '-pedantic']
    \ }