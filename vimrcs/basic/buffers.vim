" Close the current buffer
map <leader>bc :Bclose<cr>
map <leader>bd :bdelete<cr>

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Next and previous buffer
map <leader>bn :bNext<cr>
map <leader>bp :bprevious<cr>

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
