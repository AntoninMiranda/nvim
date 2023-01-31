local fn = vim.fn

--auto install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim ..."
    vim.cmd [[packadd packer.nvim]]
end

-- autoreload nvim
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

--use protected call
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
        return require("packer.util").float {border = "rounded"}
        end,
    },
}

-- add your plugins here
return packer.startup(function(use)
    use {'wbthomason/packer.nvim'} --packer piugin manager
    use {'nvim-lua/popup.nvim'} --popup plugin needed by most of plugins
    use {'nvim-lua/plenary.nvim'} --plugin needed by a lot of plugins
    use { "kyazdani42/nvim-tree.lua", requires = {'nvim-tree/nvim-web-devicons'}}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} --treesitter support for all nvim
    use { 'projekt0n/github-nvim-theme', tag = 'v0.0.7' }
    use {'nvim-telescope/telescope.nvim'}
    use {'numToStr/Comment.nvim', requires = 'JoosepAlviste/nvim-ts-context-commentstring'}
    use {"akinsho/toggleterm.nvim"}
    -- cmp plugins
    use ('hrsh7th/nvim-cmp')
    use ('hrsh7th/cmp-buffer')
    use ('hrsh7th/cmp-path')
    use ('hrsh7th/cmp-cmdline')
    use ('saadparwaiz1/cmp_luasnip')
    -- snippets
    use ('L3MON4D3/LuaSnip')
    use ('rafamadriz/friendly-snippets')
    -- Lsp
    use ('neovim/nvim-lspconfig')

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
