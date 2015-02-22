function! TeRunSilent(cmd)
  execute "silent !" . a:cmd
  execute "redraw!"
endfunction

function! RunTestFile()
  let testCmd = "te run " . expand("%:p") . " &"
  call TeRunSilent(testCmd)
endfunction

function! TeRunTestLine()
  let testCmd = "te run " . expand("%:p") . ":" . line(".") . " &"
  call TeRunSilent(testCmd)
endfunction
