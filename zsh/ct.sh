function ct() {
  CHEATSHEET_CONFIG_PATH="${CHEATSHEET_CONFIG_PATH:-$HOME/.zsh/cheatsheet}"
  [ -d "$CHEATSHEET_CONFIG_PATH" ] || mkdir -p -m 700 "$CHEATSHEET_CONFIG_PATH" 2> /dev/null
  case "$1" in
    "")
      code "$CHEATSHEET_CONFIG_PATH"
      ;;
    -l) # ct -l: list all cheatsheet
      command ls -1 "$CHEATSHEET_CONFIG_PATH/" | CHEATSHEET_CONFIG_PATH="$CHEATSHEET_CONFIG_PATH" xargs -I'{}' | sed -e 's/\.md$//'
      ;;
    *) # ct foo: show this cheatsheet
      echo $1
      local dest="$CHEATSHEET_CONFIG_PATH/$1.md"
      if [ -e "$dest" ]; then
        echo "ccat '$dest' -c | less -R"
        ccat "$dest" | less -R
      else
        echo "No such cheatsheet: $1"
      fi
      ;;
  esac
}

function _cdmark_complete() {
  local CHEATSHEET_CONFIG_PATH="${CHEATSHEET_CONFIG_PATH:-$HOME/.zsh/cheatsheet}"
  reply=($(ct -l))
}
compctl -K _cdmark_complete ct