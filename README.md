# nato-phonetic-alphabet-shell-scripts
Shell scripts to convert words into NATO phonetic alphabet, and a reference. For macOS, Windows. and Linux.

## Usage

```text
nato foo
Foxtrot Oscar Oscar
```

Non-letter characters are ignored.

With no arguments, `nato` prints a two-column NATO alphabet reference:

```text
A  Alfa      N  November
B  Bravo     O  Oscar
C  Charlie   P  Papa
D  Delta     Q  Quebec
E  Echo      R  Romeo
F  Foxtrot   S  Sierra
G  Golf      T  Tango
H  Hotel     U  Uniform
I  India     V  Victor
J  Juliett   W  Whiskey
K  Kilo      X  X-ray
L  Lima      Y  Yankee
M  Mike      Z  Zulu
```

## Scripts

* `nato.zsh` — macOS / zsh
* `nato.sh` — Linux / POSIX shell
* `nato.bat` — Windows Command Prompt

## Install

### macOS

```sh
chmod +x nato.zsh
mv nato.zsh /usr/local/bin/nato
```

### Linux

```sh
chmod +x nato.sh
sudo mv nato.sh /usr/local/bin/nato
```

### Windows

Rename `nato.bat` if desired and place it in a directory included in `%PATH%`.

## Notes

Uses official NATO spellings such as `Alfa`, `Juliett`, and `X-ray`.

No dependencies.
