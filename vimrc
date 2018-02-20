syntax enable           " syntax processing
set nocompatible        " use improved mode, not vi
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " TAB = spaces
set shiftwidth=4 
set smarttab
set backspace=indent,eol,start
set number              " show line numbers
set ruler               " show current position
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
hi cursorline cterm=bold ctermbg=240
set cursorcolumn        " highlight current column
hi cursorcolumn cterm=bold ctermbg=240
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when necessary
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
