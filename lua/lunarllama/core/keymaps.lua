-- clear search highlights
lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"

-- delete single character without copying into register
lvim.keys.normal_mode["x"] = '"_x'
lvim.keys.normal_mode["caw"] = '"_caw'
lvim.keys.normal_mode["dd"] = '"_dd'

-- lines management
lvim.keys.normal_mode["<A-S-K>"] = ":execute 'normal! yykp' | :let @\"=@\"\n"
lvim.keys.normal_mode["<A-S-J>"] = ":execute 'normal! yyP' | :let @\"=@\"\n"
