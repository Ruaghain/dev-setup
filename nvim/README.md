# neovim-setup

## Installation

To install these settings do the following:

1. Navigate to ~/.config/
2. Run `git init`
3. Run `git remote add origin git@github.com:Ruaghain/dev-setup.git`
4. Run `git checkout`
5. Run `nvim`

The relevant items should install by themselves using the `Lazy` package manager.

## Mappings

### Editor

Most of the shortcuts have been defined in `which-key`. Using the `<leader>` key will popup a window and allow you to select the required functionality

## Todo's
1. Get the sql connections to work correctly.
2. Get python application working in debug. 

## Prerequisites

### Operating Systems

#### Ubuntu

##### Installation
The available instance of `nvim` on Ubuntu may not be the version required to allow the packages referenced here to work correctly - the version of nvim needs to be created than `0.9`. To do this correctly the following steps need to be followed:

1. Uninstall the exising nvim instance `sudo apt remove nvim`
2. Register a couple of new repos by executing the following: `sudo add-apt-repository ppa:neovim-ppa/stable && sudo add-apt-repository ppa:neovim-ppa/unstable`
3. Run update `sudo apt update`
4. Install `nvim` by running the following: `sudo apt install nvim -y`

You should now be running the latest (possibly unstable) version of `nvim`. The latest stable version still wasn't the correct version to be used. This could be adjusted accordingly when the stable release contains the required version.

##### RipGrep
To allow for the grep function to work as expected the ripgrep package needs to be installed. Run the following command to do this: `sudo apt-get install ripgrep`

##### Fonts
To allow the correct icons to be displayed when using the `nvim-tree` component the relevant font needs to be installed. I used the `MonoidNerdFont` font which can be found at [NerdFonts](https://www.nerdfonts.com/)

###### Installation
1. Download and extract the relevant font.
2. Create a new directory in `/usr/share/fonts/truetype/<font-name>`
3. Copy all the `ttf` files to the newly created directory `sudo cp *.ttf /usr/share/fonts/truetype/<font-name>`
4. Refresh the system font cache `sudo fc-cache -fv`
5. Close the terminal, and reopen.
6. Go to `Preferences-->Profiles` and select your profile (or create one if one doesn't exist)
7. Check `Custom Font` and select the font that you installed.

#### MacOS

##### Fonts

The process to get the fonts is the same as that with Ubuntu

###### Installation

Once the font has been extracted do the following:
1. Select all of the fonts
2. Right click and select `Open`
3. Fontbook will open
4. Click install
5. Go to the Terminal settings
6. Click on `Change` for the font menu.
7. Select the font that was recently installed.

### Installing LSP's

To allow to relevant programming languages to work with the LSP's they need to be installed. Within neovim type the following:
* `:LspInstall pylsp`
* `:LspInstall ruff`
