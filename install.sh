
read -p "Enter path to Developer folder: " DEVELOPER
read -p "Enter the TMDb API key (https://www.themoviedb.org): " TMDB_API_KEY
read -p "Enter path to Movie Database: " MOVIE_DATABASE

rm -f ~/.bash_local
touch ~/.bash_local
echo "DEVELOPER=$DEVELOPER" >> ~/.bash_local
echo "TMDB_API_KEY=$TMDB_API_KEY" >> ~/.bash_local
echo "MOVIE_DATABASE=$MOVIE_DATABASE" >> ~/.bash_local

make --silent