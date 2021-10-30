require('utils')
-- require('fns')

-- leader key
vim.g.mapleader = ','

-- insert a new line (Ctrl+J)
keymap('n', '<NL>', 'i<CR><ESC>')

-- no ex mode (see :help Q)
keymap('n', 'Q', '<nop>')

-- map sentences () to paragraphs [] (more useful)
keymap('n', '(', '[', { noremap = true })
keymap('n', '[', '(', { noremap = true })
keymap('n', ')', ']', { noremap = true })
keymap('n', ']', ')', { noremap = true })

-- switch between tabs
keymap('n', '<C-l>', ':tabnext<cr>')
keymap('n', '<C-h>', ':tabprev<cr>')

-- cycle between the windows (panes)
keymap('n', '<C-c>', '<C-w><C-w>')

-- close window
keymap('n', '<Leader>w', ':bdelete<cr>')

-- new tab
keymap('n', '<Leader>t', ':tabnew<cr>')

-- save
keymap('n', '<Leader>s', ':write<CR>')

-- sudo write
keymap('c', 'w!!', 'w !sudo tee > /dev/null %')

-- clipboard copy
keymap('v', '<Leader>cp', '"+y :echo "copied"<CR>')

-- vertical split
keymap('n', '<Leader>v', ':vs<CR>')

-- follow links in help
keymap_buf('n', '<Enter>', '<C-]>')

-- follow the help topic in a new split
keymap_buf('n', '<C-Enter>', '<C-w><C-]><C-w>T')

-- no F1
keymap('n', '<F1>', '<Nop>')

-- turn off highlight search
keymap('n', '<Leader>n', ':set hlsearch!<CR>', { silent = true })

-- toggle paste mode
keymap('n', '<Leader>p', ':set invpaste<CR>:set paste?<CR>', { silent = true })

-- local cd to the directory containing the file in the buffer
keymap('n', '<Leader>cd', ':lcd %:h<CR>:pwd<CR>', { silent = true })

-- local cd to the parent git directory (if exists)
keymap('n', '<Leader>cr', ':lcd <c-r>=FindGitDirOrCurrent()<CR><CR>:pwd<CR>',
       { silent = true })

-- create the directories to the current file
keymap('n', '<Leader>md', ':lua create_dirs_to_current_file()<CR>', { silent = true })

-- toggle between last open buffers
keymap('n', '<backspace>', '<c-^>')

-- file explorer
keymap('n', '<Leader>l', ':CocCommand explorer<CR>')

-- Go to file in a vsplit
keymap('n', 'gs', ':vertical wincmd f<CR>')

-- Telescope
keymap('n', '<Leader>f', ':Telescope find_files<CR>')
keymap('n', '<Leader>g', ':Telescope live_grep<CR>')
keymap('n', '<Leader>j', ':Telescope git_files<CR>')
