filetype plugin indent on
syntax on
set t_Co=256
set cursorline
set number

set tabstop=4
set shiftwidth=4

"See https://github.com/joshdick/onedark.vim
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

let g:airline_theme='onedark'
let g:onedark_termcolors=256
