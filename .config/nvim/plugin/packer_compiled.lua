-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/lancit01/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/lancit01/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/lancit01/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/lancit01/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/lancit01/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["glyph-palette.vim"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/glyph-palette.vim"
  },
  ["gruvbox-flat.nvim"] = {
    config = { "\27LJ\2\ny\0\0\2\0\6\0\v6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\5\0B\0\1\1K\0\1\0\24reapply_colorscheme\thard\23gruvbox_flat_style\24gruvbox_transparent\6g\bvim\0" },
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/gruvbox-flat.nvim"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÉ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["rainbow_parentheses.vim"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/rainbow_parentheses.vim"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0" },
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/stabilize.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim" },
    loaded = true,
    only_config = true
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-autoswap"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-autoswap"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-npr"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-npr"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-signature"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\nù\2\0\0\a\0\v\0\0316\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\0016\3\0\0009\3\3\0039\3\5\3)\5\1\0)\6d\0B\3\3\2'\4\6\0B\1\3\2=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\0\0=\1\t\0006\0\0\0009\0\1\0)\1\1\0=\1\n\0K\0\1\0\27startify_change_to_dir startify_change_to_vcs_root\27startify_enable_unsafe\27startify_custom_header\18string(v:val)\nrange\bmap\afn\28startify_custom_indices\6g\bvim\0" },
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/lancit01/.local/share/nvim/site/pack/packer/start/vim-surround"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nΩ\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rdefaults\25file_ignore_patterns\1\0\0\1\t\0\0\20pkg/kit%-legacy\16pkg/website\17node_modules\r**/*.png\r**/*.jpg\r**/*.gif\15**/*.woff2\r**/*.mp4\15extensions\bfzf\1\0\0\1\0\3\28override_generic_sorter\1\nfuzzy\2\25override_file_sorter\2\1\0\1\20layout_strategy\vcenter\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\nù\2\0\0\a\0\v\0\0316\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\0016\3\0\0009\3\3\0039\3\5\3)\5\1\0)\6d\0B\3\3\2'\4\6\0B\1\3\2=\1\2\0006\0\0\0009\0\1\0004\1\0\0=\1\a\0006\0\0\0009\0\1\0)\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\0\0=\1\t\0006\0\0\0009\0\1\0)\1\1\0=\1\n\0K\0\1\0\27startify_change_to_dir startify_change_to_vcs_root\27startify_enable_unsafe\27startify_custom_header\18string(v:val)\nrange\bmap\afn\28startify_custom_indices\6g\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÉ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
-- Config for: gruvbox-flat.nvim
time([[Config for gruvbox-flat.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\2\0\6\0\v6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\5\0B\0\1\1K\0\1\0\24reapply_colorscheme\thard\23gruvbox_flat_style\24gruvbox_transparent\6g\bvim\0", "config", "gruvbox-flat.nvim")
time([[Config for gruvbox-flat.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope-fzf-native.nvim ]]

-- Config for: telescope-fzf-native.nvim
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0", "config", "telescope-fzf-native.nvim")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
