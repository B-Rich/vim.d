" ========================================
" ================  Map  =================
" ========================================

" original
"    F2           : save session
"    F3           : load session
"    F8           : toggle tagbar
"    F10          : switch number on & off
"    F12          : switch number re & abs

" leader (<SPACE>)
"    p f          : ctrlP
"    <tab>        : next buffer

let mapleader = "\<Space>"
let g:ctrlp_map = '<leader>pf'

nmap ZZ :x<cr>
vmap '' :w !pbcopy<CR><CR>
noremap  <TAB> >>
noremap  <S-TAB> <<
noremap  <Home> ^
nnoremap ; :
nnoremap <leader><Tab>   :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>
nnoremap <leader>tt      :TagbarToggle<CR>
nnoremap <F2>  :mksession! ~/.vim_session <CR>
nnoremap <F3>  :source ~/.vim_session <CR>
nnoremap <F10> :call NumberToggle()<CR>
nnoremap <F12> :call NumberToggleRe()<CR>
nnoremap j gj
nnoremap k gk
nnoremap <UP> gk
nnoremap <C-k>  5gk
nnoremap <C-UP> 5gk
nnoremap <DOWN> gj
nnoremap <C-j>  5gj
nnoremap <C-DOWN> 5gj
inoremap <Home> <ESC>^i

:set pastetoggle=<F9>

:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Copythis call CopyThis()

function! NumberToggleRe()
	if(&relativenumber == 1)
		call SetNumber()
	else
		call SetRelativeNumber()
	endif
endfunc

function! SetNumber()
	set norelativenumber
	set number
endfunc

function! SetRelativeNumber()
	set relativenumber
	set nonumber
endfunc

function! NumberToggle()
	if(&relativenumber == 1 || &number == 1)
		set nonumber
		set norelativenumber
	else
		call SetNumber()
	endif
endfunc

function! CopyThis()
	%w !pbcopy
endfunc



