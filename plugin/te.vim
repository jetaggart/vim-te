function! TeRunSilent(cmd)
  let g:te_last_test_cmd = cmd
  execute "silent !" . a:cmd
  execute "redraw!"
endfunction

command! TeRunLastTest : call TeRunLastTest()
function! TeRunLastTest()
  if exists("g:te_last_test_cmd")
    call TeRunSilent(s:last_test_cmd)
  endif
endfunction

command! TeRunAll : call TeRunAll()
function! TeRunAll()
  let testCmd = "te run"
  call TeRunSilent(testCmd)
endfunction

command! TeRunTestFile :call TeRunTestFile()
function! TeRunTestFile()
  let testCmd = "te run " . expand("%:p") . " &"
  call TeRunSilent(testCmd)
endfunction

command! TeRunTestLine :call TeRunTestLine()
function! TeRunTestLine()
  let testCmd = "te run " . expand("%:p") . ":" . line(".") . " &"
  call TeRunSilent(testCmd)
endfunction

noremap <silent> <leader>ta :TeRunAll<CR>
noremap <silent> <leader>tf :TeRunTestFile<CR>
noremap <silent> <leader>tl :TeRunTestLine<CR>
noremap <silent> <leader>tt :TeRunLastTest<CR>
