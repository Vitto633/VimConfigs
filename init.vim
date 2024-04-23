call plug#begin()
"PlUGINS-HERE"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'datsfilipe/min-theme.nvim' 
Plug 'sainnhe/sonokai'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'jesseleite/nvim-noirbuddy'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
call plug#end()



"GLOBAL-CONFIGURATIONS-OF-MY-NEOVIM"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"sintax on
set nu                  "faz com que apareçam numeros do lado
set expandtab           "faz com que o neovim insira espaços em vez de uma tabulação literal
set smarttab            "ajusta o tipo de identação do tab
set smartindent         "faz com que o neovim tente identificar automaticamente a estrutura do código
set hidden              "faz com que os buffers sejam ocultados ao invez de fechados
set incsearch           "atualiza os dados da pesquisa a medida que você digita
set ignorecase          "faz com que o neovim pesquise as coisas ignorando se a letra é maiuscula ou nao
set smartcase           "o oposto do comando acima
set scrolloff=8         "faz com que quando tiver a 8 linhas pra baixo e eu tiver descendo ele vai descendo automatico
set cmdheight=2         "faz com que o espaço que o terminal do neovim ocupe 2 linhas
set updatetime=100      "determina com que frequencia o neovim atualiza os buffers
set encoding=utf-8      "faz com que o neovim entenda o padrao utf-8"
set nobackup            "faz com que o neovim deixe de gerar um arquivo backup padrao
set splitright          "faz que quando eu gere um split na horizontal ele priorize a direita
set splitbelow          "faz que quando eu gere um slit na vertical ele priorize a parte de baixo
set autoread            "faz com que o neovim verifique automaticamente se o arquivo foi modificado fora do neovim
set mouse=a             "faz o mouse funcionar
filetype on             "o neovim tenta determinar o tipo de arquivo automaticamente com base na extensao do arquivo
filetype plugin on      "habilita o carregamento automático de plugins específicos para determinados tipos de arquivos
filetype indent on      "habilita a funcionalidade de recuo automatico



"REMAPS"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"AUTO-CMDS""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"THEME""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark     "escolhe o tema escuro por padrao
colorscheme noirbuddy   "escolhe o tema noirbuddy


if (has("nvim")) "Deixa o background transparente so no nvim
    highlight Normal guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
endif

"AirLine"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1



"NerdTree""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


nnoremap <C-a> :NERDTreeToggle<CR>
