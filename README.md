# air.vim


## Overview
Your vim colorscheme switch transeparent very easy.

## Usage
```vimscript
:TranceToggle
```

## Install
dein.toml
```toml
[[plugins]]
repo = 'Inazuma110/air.vim'
```

## <font color = red>Warning</font>
* If you set transeparent colorscheme in .vimrc(or init.vim etc), please write:
```vim
let g:isTranseparent = 1
```
* If your terminal is not transeparent, this plugin cannot transeparent your vim.  You have to change terminal settings.
