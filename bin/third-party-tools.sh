echo Installing TextMate Shell Support
ln -s /Applications/TextMate.app/Contents/Resources/mate ~/bin/mate

echo Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Installing rbenv
brew install rbenv

echo Init rbenb
rbenv init 