#!/bin/sh

if [ "$#" -eq 0 ]; then
  printf '%-12s %s\n' 'A  Alfa'    'N  November'
  printf '%-12s %s\n' 'B  Bravo'   'O  Oscar'
  printf '%-12s %s\n' 'C  Charlie' 'P  Papa'
  printf '%-12s %s\n' 'D  Delta'   'Q  Quebec'
  printf '%-12s %s\n' 'E  Echo'    'R  Romeo'
  printf '%-12s %s\n' 'F  Foxtrot' 'S  Sierra'
  printf '%-12s %s\n' 'G  Golf'    'T  Tango'
  printf '%-12s %s\n' 'H  Hotel'   'U  Uniform'
  printf '%-12s %s\n' 'I  India'   'V  Victor'
  printf '%-12s %s\n' 'J  Juliett' 'W  Whiskey'
  printf '%-12s %s\n' 'K  Kilo'    'X  X-ray'
  printf '%-12s %s\n' 'L  Lima'    'Y  Yankee'
  printf '%-12s %s\n' 'M  Mike'    'Z  Zulu'
  exit 0
fi

LC_ALL=C
export LC_ALL

printf '%s\n' "$@" | awk '
BEGIN {
  nato["A"] = "Alfa"
  nato["B"] = "Bravo"
  nato["C"] = "Charlie"
  nato["D"] = "Delta"
  nato["E"] = "Echo"
  nato["F"] = "Foxtrot"
  nato["G"] = "Golf"
  nato["H"] = "Hotel"
  nato["I"] = "India"
  nato["J"] = "Juliett"
  nato["K"] = "Kilo"
  nato["L"] = "Lima"
  nato["M"] = "Mike"
  nato["N"] = "November"
  nato["O"] = "Oscar"
  nato["P"] = "Papa"
  nato["Q"] = "Quebec"
  nato["R"] = "Romeo"
  nato["S"] = "Sierra"
  nato["T"] = "Tango"
  nato["U"] = "Uniform"
  nato["V"] = "Victor"
  nato["W"] = "Whiskey"
  nato["X"] = "X-ray"
  nato["Y"] = "Yankee"
  nato["Z"] = "Zulu"
  first = 1
}

{
  for (i = 1; i <= length($0); i++) {
    c = toupper(substr($0, i, 1))
    if (c in nato) {
      if (!first) {
        printf " "
      }
      printf "%s", nato[c]
      first = 0
    }
  }
}

END {
  printf "\n"
}
'
