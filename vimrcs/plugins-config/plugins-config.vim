""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""
map <leader>o :Buffers<cr>
map <leader>m :Files ~/compliance/<cr>
map <leader>f :Files<cr>
nnoremap <leader>h :History<cr>

""""""""""""""""""""""""""""""
" => tagbar (ctags)
""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

""""""""""""""""""""""""""""""
" => ack with silver searcher (ag)
""""""""""""""""""""""""""""""
if executable('rg')
  let g:ackprg = 'rg -S --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
" let g:airline_section_c = '%t'
let g:airline_powerline_fonts=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=240
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2

nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:syntastic_python_checkers=['flake8']
" let g:syntastic_javascript_checkers = ['eslint']
"
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
"
" let g:syntastic_html_tidy_ignore_errors=[
"     \'proprietary attribute "ng-',
"     \'proprietary attribute "bs-',
"     \'proprietary attribute "nv-'
" \]
" " Custom CoffeeScript SyntasticCheck
" func! SyntasticCheckCoffeescript()
"     let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
"     execute "e " . l:filename
"     execute "SyntasticCheck"
"     execute "Errors"
" endfunc
" nnoremap <silent> <leader>l :call SyntasticCheckCoffeescript()<cr>

let g:ale_fixers = {
\   'javascript': ['eslint']
\}
let g:ale_linters = {
\   'javascript': ['eslint', 'standard', 'prettier-eslint'],
\}
let g:ale_fix_on_save=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup hidefugitivebuffers
    autocmd!
    autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set <F12>=<C-v><F12>
set <F10>=<C-v><F10>

nnoremap <leader>yr :YcmRestartServer<cr>
nnoremap <F12> :YcmCompleter GoToDefinition<cr>
nnoremap <F10> :YcmCompleter GoToReferences<cr>
let g:ycm_goto_buffer_command = 'vertical-split'
let g:ycm_autoclose_preview_window_after_completion = 1
" taken from https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-15451411
" and http://stackoverflow.com/a/18685821
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => resolve YouCompleteMe & UltiSnips Conflicts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:instant_markdown_autostart = 0
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
