syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

let g:ale_linters = {
            \   'html': ['tidy'],
            \   'javascript': ['flow'],
            \   'mail': ['vale'],
            \   'markdown': ['vale'],
            \   'perl': ['perl', 'perlcritic'],
            \   'python': ['flake8'],
            \   'text': ['vale'],
            \   'vim': ['vint'],
            \   }

let g:ale_fixers = {
            \   'javascript': ['prettier'],
            \   'css': ['prettier'],
            \   'markdown': ['prettier']
            \}
}

let g:ale_lint_on_enter = 1
