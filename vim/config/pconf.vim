"====================================================================
"   Personal key map
"====================================================================
" edit vimrc anywhere
nnoremap <leader>e :edit $MYVIMRC<cr>
" reaload vimrc
nnoremap <leader>s :source $MYVIMRC<cr>
" Open the current cursor word vim help documentation
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>
" Install, Update, Clean plugins
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>


"====================================================================
"   deoplete
"====================================================================
let g:deoplete#enable_at_startup = 1


"====================================================================
"   Tagbar
"====================================================================
let g:tagbar_width = 35
nnoremap <silent> <F2> :TagbarToggle<cr>
inoremap <silent> <F2> <esc> :TagbarToggle<cr>


"====================================================================
"   incsearch.vim
"====================================================================
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"====================================================================
"   Mundo
"====================================================================
nnoremap <F3> :MundoToggle<CR>


"====================================================================
"   Markdown-Preview
"====================================================================
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview


"====================================================================
"   vim-easymotion
"====================================================================
let g:EasyMotion_smartcase = 1
map <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)


"====================================================================
"   ack
"====================================================================
nnoremap <leader>F :Ack!<space>


"====================================================================
"   echodoc.vim
"====================================================================
let g:echodoc_enable_at_startup = 1


"====================================================================
"   tabular
"====================================================================
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>


"====================================================================
"   delimitMate
"====================================================================
let delimitMate_expand_cr = 1


"====================================================================
"   neosnippets
"====================================================================
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


"====================================================================
"   NERDTree
"====================================================================
" F10 open/close the NERDTree
nnoremap <silent> <F10> :NERDTreeToggle<cr>
inoremap <silent> <F10> <esc> :NERDTreeToggle<cr>

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

"====================================================================
" NERDTree-git-plugin
"====================================================================
let g:NERDTreeIndicatorMapCustom = {
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


"===================================================================="
"   vim-airline
"===================================================================="
let g:airline_theme='dark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" airline extensions
let g:airline_extensions = ['branch', 'tabline', 'tagbar']
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['tagbar', 'nerdtree']
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" airline bufferline
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" buffer titile icon
let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 '
        \}

"===================================================================="
"   YouCompleteMe
"===================================================================="
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_global_ycm_extra_conf = '~/.vim/extension/YouCompleteMe/cpp/.ycm_extra_conf'
"let g:ycm_error_symbol = '✗'
"let g:ycm_warning_symbol = '✗'
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_complete_in_comments = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_python_binary_path = 'python'
"nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
"nnoremap <leader>i :YcmCompleter GoToDefinition<cr>
"nnoremap <leader>o :YcmCompleter GoToInclude<cr>
"nnoremap <leader>ff :YcmCompleter FixIt<cr>
"nmap <F5> :YcmDiags<cr>

"" Ctags
"set tags+=/usr/include/tags
"set tags+=~/.vim/systags
"set tags+=~/.vim/x86_64-linux-gnu-systags
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_semantic_triggers =  {
"            \   'c' : ['->', '.','re![_a-zA-z0-9]'],
"            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
"            \             're!\[.*\]\s'],
"            \   'ocaml' : ['.', '#'],
"            \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
"            \   'perl' : ['->'],
"            \   'php' : ['->', '::'],
"            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
"            \   'ruby' : ['.', '::'],
"            \   'lua' : ['.', ':'],
"            \   'erlang' : [':'],
"            \ }
"let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&',']']
