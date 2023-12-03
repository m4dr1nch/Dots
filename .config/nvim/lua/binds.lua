vim.api.nvim_exec(
[[
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>
]],
true)