set nu

map <C-m> :tabnext<cr>

let MRU_Open_File_Use_Tabs = 1

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

colorscheme gruvbox
highlight Normal ctermbg=16
set colorcolumn=80
highlight colorcolumn ctermbg=black


let g:NERDTreeWinSize=30


let g:gitgutter_terminal_reports_focus=0
set updatetime=2000 

let g:gitgutter_enabled=1
set list
set listchars=space:·

