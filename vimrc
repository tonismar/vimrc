syntax on        "this is needed to see syntax
set background=dark  "makes it easier to read with black background
"colorscheme darkblue "set theme in ./vim/colors folder
colorscheme koehler "set theme in ./vim/colors folder
"colorscheme peachpuff "set theme in ./vim/colors folder
"colorscheme ir_black "set theme in ./vim/colors folder
"colorscheme murphy "set theme in ./vim/colors folder
set ls=2            " allways show status line
set hlsearch        " highlight searches
"set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set ignorecase        "ignore case while searching
map <F4> <ESC>:set number<CR><ESC>
set ts=4

" StatusLine Configs
" set statusline=%F%m%r%h%w\ %=[FORMATO=%{&ff}]\ [TIPO=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [linha=%04l,%04v][%p%%]\ [LINHAS=%L]
set statusline=%1*\ %F%m%r%h%w\ %2*\ %=FORMATO=%{&ff}\ \|\ TIPO=%Y\ \|\ ASCII=\%03.3b\ \|\ linha=%3*\%04l,%2*\coluna=%3*\%04v\ %0*\ \[%p%%]\ \|\ LINHAS=%L
set laststatus=2
hi StatusLine ctermbg=black ctermfg=white
hi User1 ctermfg=yellow ctermbg=darkgray
hi User2 ctermfg=blue ctermbg=darkgray
hi User3 ctermfg=green ctermbg=darkgray

" Atalhos em modo de inserção
imap <F3> $this->
imap <F2> ->
"imap { {}<left>
"imap ( ()<left>
"imap [ []<left>
imap _e <?=?><left><left>

"====== complementação de palavras ====
"usa o tab em modo insert para completar palavras
function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
