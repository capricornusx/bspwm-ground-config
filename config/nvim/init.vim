call plug#begin() " NERDTree - быстрый просмотр файлов Plug 'preservim/nerdtree'

" Просмотр папок
Plug 'preservim/nerdtree'

" Линия статуса
Plug 'itchyny/lightline.vim'

" Emmet для Vim
Plug 'mattn/emmet-vim'

" Тема
Plug 'mhartington/oceanic-next'

" CSS/SCSS/HTML подсветка цвета 
Plug 'gorodinskiy/vim-coloresque'

" Zen mode
Plug 'junegunn/goyo.vim'

" Git Integration
Plug 'airblade/vim-gitgutter'

" NERDCommenter (плагин для комментирования)
Plug 'preservim/nerdcommenter'

" Сниппеты (сноски кода)
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" ALE (Проверка на синтаксические ошибки)
Plug 'dense-analysis/ale'

call plug#end()

"# Binds

" Комбинация клавиш jkl - действует как Escape в режиме Insert
imap jkl <ESC>

" Комбинация клавиш jks - действует как Escape + сохранение 
" в режиме вставки
imap jks <ESC>:w<CR>

" F2 чтобы выходить из PasteMode (мод для вставки текста)
set pastetoggle=<F2>

" <leader> теперь пробел
let mapleader = " "

" В нормальном режиме Space+f вызывает :NERDTree
" Ctrl+c - комментирует строки
nmap <leader>f :NERDTreeToggle<CR>
vmap <C-c> <plug>NERDCommenterToggle
nmap <C-c> <plug>NERDCommenterToggle


""""PLUGINS BINDS""""

""" ALE
" Навигация между замеченными ошибками
nmap <silent> <leader>j <Plug>(ale_next_wrap)
nmap <silent> <leader>k <Plug>(ale_previous_wrap)

""" Emmet
" Активировать дополнение Emmet на Tab+e
" Использовать Emmet (автодополнить код)
let g:user_emmet_expandabbr_key = '<tab>e'

""" UltiSnips
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-n>"
let g:UltiSnipsExpandTrigger = "<tab>"


"# Plugins configs

" ALE
" Устанавливаем, как будет показываться ошибка и предупреждение
let g:ale_sign_error = '>'
let g:ale_sign_warning = '?'
" Проверяем файлы только при сохранении (для экономии энергии)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1

" Emmet
let g:user_emmet_mode='i'    "Активировать Emmet только в режиме ввода
" Активировать Emmet только в файлах .html, .css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Линия статуса: конфигурация
set noshowmode " Табличка --INSERT-- больше не выводится на экран
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'oceanicnext',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" NERDCommenter
" Разрешить комментировать пустые строки
let g:NERDCommentEmptyLines = 0

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Если линия все ещё сожержит комментарий (его знак или знаки), то
" расскоментировать далее эту строку (строки)
let g:NERDToggleCheckAllLines = 1


"# UI config

" Делаем Vim цветным ( с темой и синтаксисом )
set nocompatible 
set t_Co=256
syntax enable

" Тема для **NeoVim**
colorscheme OceanicNext

"# UX config

" Делаем нормальные табы
set expandtab
set smarttab
" 1 таб = 4 пробела
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

