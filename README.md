# VimConfigs

<span>call plug#begin()<br>
"PlUGINS-HERE""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<br>
Plug 'datsfilipe/min-theme.nvim' <br>
Plug 'sainnhe/sonokai'<br>
Plug 'tjdevries/colorbuddy.nvim'<br>
Plug 'jesseleite/nvim-noirbuddy'<br>
Plug 'vim-airline/vim-airline'<br>
Plug 'vim-airline/vim-airline-themes'<br>
Plug 'ryanoasis/vim-devicons'<br>
Plug 'sheerun/vim-polyglot'<br>
Plug 'preservim/nerdtree'<br>
call plug#end()<br>
<br>
<br>
<br>
"GLOBAL-CONFIGURATIONS-OF-MY-NEOVIM"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<br>
set nu                  "faz com que apareçam numeros do lado<br>
set expandtab           "faz com que o neovim insira espaços em vez de uma tabulação literal<br>
set smarttab            "ajusta o tipo de identação do tab<br>
set smartindent         "faz com que o neovim tente identificar automaticamente a estrutura do código<br>
set hidden              "faz com que os buffers sejam ocultados ao invez de fechados<br>
set incsearch           "atualiza os dados da pesquisa a medida que você digita<br>
set ignorecase          "faz com que o neovim pesquise as coisas ignorando se a letra é maiuscula ou nao<br>
set smartcase           "o oposto do comando acima<br>
set scrolloff=8         "faz com que quando tiver a 8 linhas pra baixo e eu tiver descendo ele vai descendo automatico<br>
set cmdheight=2         "faz com que o espaço que o terminal do neovim ocupe 2 linhas<br>
set updatetime=100      "determina com que frequencia o neovim atualiza os buffers<br>
set encoding=utf-8      "faz com que o neovim entenda o padrao utf-8"<br>
set nobackup            "faz com que o neovim deixe de gerar um arquivo backup padrao<br>
set splitright          "faz que quando eu gere um split na horizontal ele priorize a direita<br>
set splitbelow          "faz que quando eu gere um slit na vertical ele priorize a parte de baixo<br>
set autoread            "faz com que o neovim verifique automaticamente se o arquivo foi modificado fora do neovim<br>
set mouse=a             "faz o mouse funcionar<br>
filetype on             "o neovim tenta determinar o tipo de arquivo automaticamente com base na extensao do arquivo<br>
filetype plugin on      "habilita o carregamento automático de plugins específicos para determinados tipos de arquivos<br>
filetype indent on      "habilita a funcionalidade de recuo automatico<br>
<br>
<br>
<br>
"REMAPS"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<br>
<br>
<br>
<br>
"THEME""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<br>
if exists('+termguicolors')<br>
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"<br>
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"<br>
  set termguicolors<br>
endif<br>
<br>
set background=dark     "escolhe o tema escuro por padrao<br>
colorscheme noirbuddy   "escolhe o tema noirbuddy<br>
<br>
if (has("nvim")) "Deixa o background transparente so no nvim<br>
    highlight Normal guibg=NONE ctermbg=NONE<br>
    highlight EndOfBuffer guibg=NONE ctermbg=NONE<br>
endif<br>
<br>
<br>
<br>
"AirLine"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<br>
let g:airline_theme = 'sonokai'<br>
let g:airline#extensions#tabline#enabled = 1<br>
let g:airline_powerline_fonts = 1<br>
<br>
<br>
<br>
"NerdTree""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""<br>
nnoremap <C-a> :NERDTreeToggle<CR><br></span>
