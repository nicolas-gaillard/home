# ========================
# OSX / brew update script
# ========================

# - Brew -
# upgrade
brew update
brew upgrade
brew cleanup -s

# now diagnotic
brew doctor
brew missing

# - OSX -
echo “you can hit mas upgrade to upgrade theses apps from the app store:”
mas outdated
echo “install with: mas upgrade”

# - Others -
# npm update -g
echo “and pip ? pip freeze — local | grep -v ‘^\-e’ | cut -d = -f 1 | xargs pip install -U “