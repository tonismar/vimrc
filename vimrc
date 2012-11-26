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
"set number            "put numbers on side
set ts=4
" set statusline=%F%m%r%h%w\ %=[FORMATO=%{&ff}]\ [TIPO=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [linha=%04l,%04v][%p%%]\ [LINHAS=%L]
set statusline=%1*\ %F%m%r%h%w\ %2*\ %=FORMATO=%{&ff}\ \|\ TIPO=%Y\ \|\ ASCII=\%03.3b\ \|\ HEX=\%02.2B\ \|\ linha=%3*\%04l,%2*\coluna=%3*\%04v\ %0*\ \[%p%%]\ \|\ LINHAS=%L
set laststatus=2
hi StatusLine ctermbg=black ctermfg=white
hi User1 ctermfg=yellow ctermbg=darkgray
hi User2 ctermfg=blue ctermbg=darkgray
hi User3 ctermfg=green ctermbg=darkgray
imap <F3> $this->
imap <F2> ->
