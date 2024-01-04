" ======
" Global
" ======
" Start search & replace commad
map <C-h> :%s/
" Toggle NvimTree
map <silent> <C-t> :NvimTreeToggle<CR>

" ===========
" Normal mode
" ===========
" Indo with `CTRL + z`
" Redo the undo with `CTRL + y`
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>
" Move to most Right or Left character
nnoremap <C-S-Left> 0
nnoremap <C-S-Right> $

" ===========
" Insert mode
" ===========
" Delete words via `CTRL + BACKSPACE`
inoremap <C-BS> <C-w>
inoremap <C-h> <C-w>
" Move to the most Right or Left charactehor
inoremap <C-S-Right> <C-O>$
inoremap <C-S-Left> <C-O>0

" Indo with `CTRL + z`
" Redo the undo with `CTRL + y`
inoremap <C-Z> <C-O>u
inoremap <C-Y> <C-O><C-R>

" Bufferline
nnoremap <silent><Tab>l :BufferLineCycleNext<CR>
nnoremap <silent><Tab>h :BufferLineCyclePrev<CR>

nnoremap <silent><Tab>L :BufferLineMoveNext<CR>
nnoremap <silent><Tab>H :BufferLineMovePrev<CR>
