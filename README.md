# myVimSetup
This used to just be a convenient backup of my .vimrc file, together with a generated list of plugins I'm using. However, I've now added an `install` script that can be run (using Node.js) to automatically download and install a bundler (pathogen, in this case), plugins, and color schemes. The things to be installed are defined in `plugins.js`. Their destinations (and the default permissions for the Vim directories) are defined in `config.js`. (The bare list of plugins is also still available in `plugins_list.txt`.

Usage (of the Installer Script)
===============================

1. Clone the repo (`git clone https://github.com/jmrog/myVimSetup.git`).
2. From the working copy, ensure that `install` is executable (`chmod +x ./install`) and then execute it (`./install`).
3. Profit.

Installer Issues & Assumptions
==============================

1. Assumes an empty or nonexistent `HOME/.vim` directory; currently breaks otherwise.
2. Completely overwrites `HOME/.vimrc` with the `.vimrc` file in the repository.
3. Assumes (for the moment) that `vim-pathogen` is the bundler and that `vim-monokai` is the color scheme; these are hard-coded.
4. The installer doesn't currently remove the downloaded sources for the two packages just mentioned (pathogen and monokai), so you'll have to do that yourself (if you want to).
