# nvm performance trick
# to work you have to uncomment / update the path to your npm.sh file
nvm()
{
  if [[ `command -v nvm`-ne"nvm" ]]; then

    # installed with Homebrew
    # source "$(brew --prefix nvm)/nvm.sh"

    # installed directly
    source ~/.nvm/nvm.sh
    nvm $*
  fi
}
