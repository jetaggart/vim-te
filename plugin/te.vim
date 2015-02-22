command! TeRunTestFile :call TeRunTestFile()
command! TeRunTestLine :call TeRunTestLine()
noremap <silent> <leader>tf :TeRunTestFile<CR>
noremap <silent> <leader>tl :TeRunTestLine<CR>
