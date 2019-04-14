" Tim's NVIM Config File
"
"
" PLUGINS --------------------------------------------------------------------
call plug#begin()

" APPEARANCE & THEMES
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
" Plug 'whatyouhide/vim-lengthmatters'
Plug 'matze/vim-move'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'lervag/vimtex'
Plug 'sonph/onehalf'

" TECHNICALS
" Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'

" LaTex

Plug 'lervag/vimtex'

" Funsies
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()

" PLUGIN SETTINGS ------------------------------------------------------------

" Airline
let g:airline_powerline_fonts = 1
set noshowmode
set laststatus=2
set ttimeoutlen=50

" Vim-Move
"let g:move_key_modifier = 't'

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_color_change_percent = 3
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Ale Linter
"let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = '⨉'
let g:ale_echo_msg_warning_str = '⚠ '
let g:ale_echo_msg_format = '%severity% [%linter%] %s'

" UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsSnippetsDir="~/.config/nvim/plugged/vim-snippets/snippets"

" Flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" Goyo/Limelight 
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"VimTex Configs
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_latexmk_options = '-pdf -verbose -file-line-error -synctex=1'
let g:Tex_IgnoredWarnings = 
    \"Underfull\n".
    \"Overfull\n".
    \"specifier changed to\n".
    \"You have requested\n".
    \"Missing number, treated as zero.\n".
    \"There were undefined references\n"
    \"Citation %.%# undefined"
let g:Tex_IgnoreLevel = 2


" GENERAL SETTINGS -----------------------------------------------------------

" Line numbers
set relativenumber
set number

" Indent 4 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Make searches case sensitive
set ignorecase
set smartcase

" enable filetype detection
filetype on
filetype indent on
filetype plugin on

"Unsets 'last search pattern' by hitting return
"nnoremap <CR> :noh<CR><CR>

" Map Paste Mode to F10
set pastetoggle=<F10>

" APPEARANCE -----------------------------------------------------------------
syntax enable
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_light='soft'

"
"
" End NVIM Config
