home=~/

find home -type f ! -name '*.DS_Store'

read -p "These files will be copied, continue ? (y/n) " answer
if [[ $answer =~ [yY][eE][sS]|[yY] ]] ; then
    cp -R home/ $home
    echo "Done"
fi
