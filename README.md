# NanoVim
Optimized Neovim configuration for a seamless coding experience.

## 🛠️ Instalation

For MaxOs & Linux
```bash
git clone https://github.com/rado-am/NanoVim.git ~/.config/nvim
```

For Windows
```bash
git clone https://github.com/rado-am/NanoVim.git ~/AppData/Local/nvim/
```

## Shortcuts

| Key | Description |
| ------ | ------ |
| Ctrl + a | Select all text in file |
| Ctrl + d | Duplicate line |
| Ctrl + c | Copy selected text to system clipboard |
| Ctrl + p | Lists files in your current working directory |
| Ctrl + Shift + g | Fuzzy search through the output of git ls-files command |
| Ctrl + Shift + p | Fuzzy search through the all files include node_modules |
| Ctrl + b | Toggle file explorer |
| Ctrl + n | Focus file explorer |
| Ctrl + Enter | Show code action manu |
| Shift + K | Show docs |
| Shift + D | Go to definition |
| Option + Enter | Auto format file |

## FAQ
1. If you have an error `fzf extension doesn't exist or isn't installed` go to this directory
on MacOs & Linux
`~/.local/share/nvim/lazy/telescope-fzf-native.nvim`
on Windows
`C:\Users\{user}\AppData\Local\nvim-data\lazy\telescope-fzf-native.nvim`
and type `make`
