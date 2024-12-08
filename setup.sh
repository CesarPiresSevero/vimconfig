echo ----- VimConfig Script ----- 
echo - Copying .vimrc
cp .vimrc ~/.vimrc
echo - Creating .vim folder
mkdir ~/.vim
echo - Copying config files
cp -r autoload ~/.vim/autoload
cp -r colors ~/.vim/colors
echo - All Done!
echo ----------------------------
