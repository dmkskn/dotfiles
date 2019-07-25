
read -p "Enter path to Developer folder: " DEVELOPER
read -p "Enter the TMDb API key (https://www.themoviedb.org): " TMDB_API_KEY
read -p "Enter path to Movie Database: " MOVIE_DATABASE

rm -f ~/.bash_local
touch ~/.bash_local

echo "export DEVELOPER=$DEVELOPER" >> ~/.bash_local
echo "export TMDB_API_KEY=$TMDB_API_KEY" >> ~/.bash_local
echo "export MOVIE_DATABASE=$MOVIE_DATABASE" >> ~/.bash_local

read -p "Install packages (y/n): " INSTALL_PACKAGES
read -p "Install Macos settings (y/n): " INSTALL_MACOS_SETTINGS

[ "$INSTALL_PACKAGES" == "y" ] && bash packages.sh
[ "$INSTALL_MACOS_SETTINGS" == "n" ] && bash macos.sh

make --silent