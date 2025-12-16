# Roxane

A dark Neovim colorscheme with lush purple accents.

## Features

- Comprehensive syntax highlighting for various languages
- Support for popular Neovim plugins (Telescope, Noice, Blink-cmp, etc.)
- Tree-sitter and LSP semantic token highlighting
- Dark theme optimized for long coding sessions

## Screenshots

![Dashboard](assets/dashboard.png)
*Dashboard example*

![Editor](assets/example.png)
*General editor view*

![Picker](assets/picker.png)
*Picker interface*

![Render Markdown](assets/render-markdown.png)
*Markdown rendering*

## Requirements

- Neovim 0.8+

## Installation

### Using [LazyVim]()

```lua
return {
    {
        "LeandroDeJesus-S/roxane.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme roxane")
        end,
    },
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'LeandroDeJesus-S/roxane.nvim'
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'LeandroDeJesus-S/roxane.nvim'
```

## Usage

Add the following to your Neovim configuration:

```lua
vim.cmd('colorscheme roxane')
```

## Building

The colorscheme uses [lush.nvim](https://github.com/rktjmp/lush.nvim) and [Shipwright](https://github.com/rktjmp/shipwright.nvim) to compile the theme.

### Clone this repo
```bash
git clone https://github.com/LeandroDeJesus-S/roxane.nvim.git
```

### Setup your environment
```lua
return {
    "rktjmp/lush.nvim",
    "rktjmp/shipwright.nvim",
    { dir = "path/to/roxane.nvim" },
}
```

Optional (recommend) Dev/Usage setup

```lua
if vim.env.DEV == "1" then
    return {
        "rktjmp/lush.nvim",
        "rktjmp/shipwright.nvim",
        { dir = "path/to/roxane.nvim" },
    }
end

return {
    {
        "LeandroDeJesus-S/roxane.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme roxane")
        end,
    },
}
```

### Building
Once you are in the project directory you can run shipwright build command:

```bash
:Shipwright
```

This generates the compiled colors in `colors/roxane.lua`. Note: The build script may not include all custom highlight groups. If certain plugin highlights (e.g., SnacksDashboard) are missing, add them manually to `colors/roxane.lua` outside `-- PATCH_OPEN` and `-- PATCH_CLOSE`.

You also can use the `:Lushify` command to see your changes in real time. I recommend you read [Creating Your New Colorscheme With Lush](https://github.com/rktjmp/lush.nvim/blob/main/CREATE.md) and [Extending a lush colorscheme](https://github.com/rktjmp/lush.nvim/blob/main/EXTEND.md) guides if you want to make changes.

## License

See [LICENSE](LICENSE) for details.
