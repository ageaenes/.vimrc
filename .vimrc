
"Setters
set nocompatible
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set background=dark
set bs=2
set ruler

"General 
colorscheme koehler 
filetype on
filetype plugin on

"Mappings
nnoremap <F5> :NERDTree<CR>



"functions to setup different parameters for Web Programming
function! SetupWebOptions()
	set tabstop=3
	set shiftwidth=3
	set softtabstop=3
	set expandtab
endfunction

"function to setup different parameters for C Programming
function! SetupCOptions()
	set autoindent
	set tabstop=5
	set shiftwidth=5
	set softtabstop=5
	set expandtab
endfunction

"function to setup different parameters for text Editing
function! SetupTextOptions()
	setlocal spell spelllang=en
endfunction


function! SetupLogOptions()
	set hlsearch 
endfunction

"function to setup different parameters for general code
function! SetupGeneralCodeOptions()
	set list
	set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
	set number
	set modeline
	syntax on 
endfunction

augroup C
	autocmd!
	autocmd BufNewFile,BufRead *.{c,h,cpp,hpp} call SetupCOptions()
augroup END

augroup IDEGENRAL
	autocmd!
	autocmd BufNewFile,BufRead *{.vimrc,.tscrc,.profile} call SetupGeneralCodeOptions()
augroup END

augroup WEB
	autocmd!
	autocmd BufNewFile,BufRead *.{html,js,json,css} call SetupWebOptions()
augroup END

augroup COMMON
	autocmd!
	autocmd BufNewFile,BufRead *.{html,js,json,c,h,cpp,hpp,java,css} call SetupGeneralCodeOptions()
augroup END

augroup RELOAD_VIM
     autocmd!
     autocmd BufWritePost $MYVIMRC source $MYVIMRC$
augroup END
