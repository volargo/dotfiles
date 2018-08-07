"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/extension')

Plug 'rhysd/clever-f.vim'
Plug 'vim-scripts/fcitx.vim'
Plug 'ujihisa/neco-look'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/unite.vim'

" Completer
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/vim-hug-neovim-rpc'

" Debug
Plug 'idanarye/vim-vebugger'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Pairs match and auto indent
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Raimondi/delimitMate'
Plug 'Yggdroot/indentLine'

Plug 'roxma/nvim-yarp'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdcommenter'
Plug 't9md/vim-choosewin'

Plug 'mhinz/vim-grepper'

" File tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Tagbar
Plug 'majutsushi/tagbar'

" Translator
Plug 'iamcco/dict.vim'

" Themes
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

" Lang support
Plug 'WolfgangMehner/vim-plugins'

" Highlight search
Plug 'haya14busa/incsearch.vim'
Plug 'easymotion/vim-easymotion'

" Syntax highlight
Plug 'hdima/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-jp/vim-cpp'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Undo
Plug 'simnalamburt/vim-mundo'

"Plug 'justinmk/vim-syntax-extra'

call plug#end()
