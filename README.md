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
| Space + s | Save file |
| Ctrl + p | Lists files in your current working directory |
| Ctrl + g | Fuzzy search through the output of git ls-files command |
| Space + f + g | Search for a string in your current working directory |

## FAQ
1. If you have an error `fzf extension doesn't exist or isn't installed` go to this directory
on MacOs & Linux
`~/.local/share/nvim/lazy/telescope-fzf-native.nvim`
on Windows
`C:\Users\{user}\AppData\Local\nvim-data\lazy\telescope-fzf-native.nvim`
and type `make`
