echo "Installing Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo
echo "Installing Control P"
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

echo
echo "Installing NERDTree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo
echo "Installing Tagbar"
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar

echo
echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
