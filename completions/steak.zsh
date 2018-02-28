if [[ ! -o interactive ]]; then
    return
fi

compctl -K _steak steak

_steak() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(steak commands)"
  else
    completions="$(steak completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
