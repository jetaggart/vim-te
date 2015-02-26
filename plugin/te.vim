function! TeRun(cmd)
  let s:te_last_test_cmd = a:cmd

  call system("te async-available")

  if v:shell_error == 0
    silent !clear
    execute "silent !" . a:cmd . " &"
    execute "redraw!"
  else
    silent !clear
    execute "!" . a:cmd
  endif
endfunction

command! TeRunLastTest : call TeRunLastTest()
function! TeRunLastTest()
  if exists("s:te_last_test_cmd")
    call TeRun(s:te_last_test_cmd)
  endif
endfunction

command! TeRunAll : call TeRunAll()
function! TeRunAll()
  let testCmd = "te run"
  call TeRun(testCmd)
endfunction

command! TeRunTestFile :call TeRunTestFile()
function! TeRunTestFile()
  let testCmd = "te run " . expand("%:p")
  call TeRun(testCmd)
endfunction

command! TeRunTestLine :call TeRunTestLine()
function! TeRunTestLine()
  let testCmd = "te run " . expand("%:p") . ":" . line(".")
  call TeRun(testCmd)
endfunction

noremap <silent> <leader>ta :TeRunAll<CR>
noremap <silent> <leader>tf :TeRunTestFile<CR>
noremap <silent> <leader>tl :TeRunTestLine<CR>
noremap <silent> <leader>tt :TeRunLastTest<CR>
