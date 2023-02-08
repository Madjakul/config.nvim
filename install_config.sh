green=`tput setaf 2`
reset=`tput sgr0`

# Making sure neovim is updated
echo ${green}=== Updating Neovim ===${reset}
sudo apt remove neovim -y
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

# Installing the plugin manager
echo ${green}=== Installing Vim Plug ===${reset}
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Installing the Python's dependencies
echo ${green}=== Installing Python\'s Dependencies ===${reset}
pip3 install --upgrade -r requirements.txt

# Installing the correct font
echo ${green}=== Installing the Roboto Font ===${reset}
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/RobotoMono.zip
mkdir roboto_font
unzip ./RobotoMono.zip -d ./roboto_font
# Moving the font to the .fonts directory
if [ -d "~/.fonts" ]; # If the directory ~/.fonts already exist
then
    mv -v ./roboto_font/* ~/.fonts
    rm -rf ./roboto_font
else
    mkdir ~/.fonts
    mv -v ./roboto_font/* ~/.fonts
    rm -rf ./roboto_font
fi
cd ~/.fonts
fc-cache -fv

# Installing the plugins
echo ${green}=== Installing the NVim Plugins ===${reset}
nvim +PlugInstall +PlugUpdate +qall
