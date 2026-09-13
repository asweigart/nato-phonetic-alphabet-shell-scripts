#!/bin/zsh

typeset -A NATO=(
  A Alfa
  B Bravo
  C Charlie
  D Delta
  E Echo
  F Foxtrot
  G Golf
  H Hotel
  I India
  J Juliett
  K Kilo
  L Lima
  M Mike
  N November
  O Oscar
  P Papa
  Q Quebec
  R Romeo
  S Sierra
  T Tango
  U Uniform
  V Victor
  W Whiskey
  X X-ray
  Y Yankee
  Z Zulu
)

if (( $# == 0 )); then
  left=(A B C D E F G H I J K L M)
  right=(N O P Q R S T U V W X Y Z)

  for (( i = 1; i <= 13; i++ )); do
    printf '%-12s %s\n' "${left[i]}  ${NATO[${left[i]}]}" "${right[i]}  ${NATO[${right[i]}]}"
  done
  exit 0
fi

input="$*"
words=()

for (( i = 1; i <= ${#input}; i++ )); do
  ch="${input[i]}"
  upper="${(U)ch}"

  if [[ "$upper" == [A-Z] ]]; then
    words+=("${NATO[$upper]}")
  fi
done

print -r -- "${(j: :)words}"
