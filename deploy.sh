if [ -z "$1" ]; then
    echo "Empty Variable 1 you must have a username"
    exit
fi

nvm use v4.2.4
npm install -g polymer-cli

cd ../aab_UI_with_google_sign_in
polymer build
rm build/bundled/NOTES.md
rm build/bundled/README.md
rm build/bundled/*.sh
scp -r build/bundled/* $1@ttfhw2.datafundamentals.com:/home/$1/ttfhw2.datafundamentals.com/

cd ../aaa_UI_2016_state_of_the_art
polymer build
rm build/bundled/NOTES.md
rm build/bundled/README.md
rm build/bundled/*.sh
scp -r build/bundled/* $1@ttfhw1.datafundamentals.com:/home/$1/ttfhw1.datafundamentals.com/