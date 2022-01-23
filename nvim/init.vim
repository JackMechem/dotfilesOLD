call plug#begin()

" colorscheme
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Bottom Bar
Plug 'itchyny/lightline.vim'

" c/c++ auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File Browser
Plug 'preservim/nerdtree'

" Fix Nerd Tree and Tabs
Plug 'jistr/vim-nerdtree-tabs'

" Nice Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'


" c/c++ syntax hylighting
Plug 'jackguo380/vim-lsp-cxx-highlight'

" auto bracket and quote pairs
Plug 'jiangmiao/auto-pairs'

Plug 'Chiel92/vim-autoformat'

Plug 'neovim/nvim-lspconfig'

call plug#end()

" ////////// COLOR SCHEME / FONTS //////////
syntax on
let g:tokyonight_style = "night"
colorscheme tokyonight
set encoding=UTF-8
set termguicolors

" ////////// GENERAL SETTINGS //////////
" enable mouse
set mouse=a

" line numbers
set number

" hide mode text
set noshowmode

set sts=4
set ts=4
set sw=4

" ////////// AUTO START //////////
au VimEnter *  NERDTreeTabsOpen

" ////////// BINDINGS //////////
nnoremap <silent> <C-B> :NERDTreeTabsToggle<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
noremap <F3> :Autoformat<CR>

nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-h> :BufferMovePrevious<CR>
nnoremap <silent>    <A-l> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

let g:lightline = {
			\ 'colorscheme': 'tokyonight',
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }

" c++ syntax highlighting
" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
" let g:cpp_class_decl_highlight = 1
let g:lsp_cxx_hl_use_mode_delay = 1
let g:lsp_cxx_hl_edit_delay_ms = 1000
