# Neovim Dotfiles

![Screenshot](/other/screenshot.png)

Hey there! This is my personal neovim configuration. I use it for all my programming needs. It's a work in progress, so it's not perfect yet, especially, as I am still learning how to set up neovim properly and how to use it efficiently.

## Installation

Depending on your setup, you might not want to install this repository directly into your configuration directory. I personally like to keep my dotfiles in a separate directory and use rsync to copy them to the configuration directory. This way I can keep track of my dotfiles with git and still have them in the right place. Most likely in your case, you will clone this into a different directory and cherry-pick the files you want to use. 

### Prerequisites

Modules:
- [Neovim](https://neovim.io/)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)

Fonts:
- [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono)
- [Feather Font](https://github.com/AT-UI/feather-font)

## Color Scheme, Font and general look and feel

The color scheme I use is a variation of some linux rice I found a while back and modified it to my liking. Sadly, I do not recall where I found it nor have any surviving links to it. If you know where it came from, please let me know so I can give proper credit, as I really enjoy this color scheme and been using it for a while now.
For the font I use [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono), which I set as the default font in my terminal emulator.
Icons are used from [Feather Font](https://github.com/AT-UI/feather-font), which I also use anywhere on my system and reminds me of [Iconoir](https://iconoir.com/).
Note, that some configurations are not included in this repository and might influence the look and feel of your setup. Most of those can be found on my [dotfiles repository](https://github.com/confusedSerge).

## License

This project is licensed under the MIT License - see the [LICENSE.md](/LICENSE.md) file for details. Note that this only extends to my code and other modules, fonts, etc. are licensed under their respective licenses and do not fall under this license. If you find any license violations, please contact me immediately, as this is not intended.