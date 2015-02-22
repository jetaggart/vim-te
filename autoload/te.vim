function! TeRunSilent(cmd)
  execute "silent !" . a:cmd
  execute "redraw!"
endfunction

command! TeRunTestFile :call TeRunTestFile()
function! RunTestFile()
  let testCmd = "te run " . expand("%:p") . " &"
  call TeRunSilent(testCmd)
endfunction

command! TeRunTestLine :call TeRunTestLine()
function! TeRunTestLine()
  let testCmd = "te run " . expand("%:p") . ":" . line(".") . " &"
  call TeRunSilent(testCmd)
endfunction

noremap <silent> <leader>tf :TeRunTestFile<CR>
noremap <silent> <leader>tl :TeRunTestLine<CR>
