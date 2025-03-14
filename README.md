# neovim-setup

## Mappings

### Editor

|Key| Description|
|--|--|
|<leader>1 | Toggles the tree on and off |
|<leader>ff | Finds files |
|<leader>fb | Lists files found in the buffer |

### Git

|Key| Description|
|--|--|
|<leader>ga | Adds the current file |
|<leader>gb | Runs a git blame on the current file |
|<leader>gs | Runs a git status |

## Todo's
1. The ability to open multiple terminals to execute client and server code.
2. The ability to connect to a database and run sql.
3. The ability to have scratch files in a project

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

##### Fonts
To allow the correct icons to be displayed when using the `nvim-tree` component the relevant font needs to be installed. I used the `test` font which can be found at [NerdFonts](https://www.nerdfonts.com/)

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

###### Installation
