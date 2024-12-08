# VimConfig

## Overview

Simple VIM configuration script to get started right the way!

The configurations include:
- Support relative numbering
- Ignore non editable files
- Set tabs as 4 space characters
- Ignore case during searches
- Highlight searched words
- New colorschemes
- New keymaps

## Instructions

If VIM is already installed, just run the script as:

```shell
./setup.sh
```

Now VIM should be configured. If a previous configuration was already available on the system the script might not execute properly.

### Colorschemes

There are 3 colorschemes added to this repository:

- Onedark
- Onedark Custom
- Monokai

By default, Onedark Custom is set. One may change it by uncommenting the desired scheme in .vimrc.

### Keymaps

There are only 3 keymaps set:

- Ctrl + C -> Esc in insert mode
- Ctrl + / -> Comment line
- Ctrl + Shift + / -> Uncomment line

## Notes

- Windows is not supported!
- Tested on Manjaro and Ubuntu (22.04)

