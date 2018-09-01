Oilworks
========

A LaTeX style formatter package that allows users to create LaTeX documents conforming to the Oriental Institute of Leipzig's style requirements.

# Requirements #

- XeLaTeX. Under Debian-based Linuxes (Ubuntu, Mint, etc.), just `sudo apt install texlive-full` and you'll be all-set. Under Solus OS, similarly, just type `sudo eopkg it texlive-all`.
- Biber. For some reason, not always (?) included with `texlive-full` - `sudo apt install biber` or `sudo eopkg it texlive-full`.
- GNU make if you want to use the Makefile (`sudo apt install build-essential` or `sudo eopkg it -c system.devel`)

(Yes, the commands above read `apt`, not `apt-get`. My subtle way of saying that things might not work on Debian-based systems older than Jessie. I'm using Solus OS these days anyways and encourage anyone to make the jump for desktop/laptop machines.)

# How to use #

- `mkdir MyNewDocument`
- `cd MyNewDocument`
- `git init .`
- `git submodule add https://git.weitnahbei.de/jrs-studium/oilworks.git`
- `cd oilworks`
- `./setup.sh` (Follow the instructions)

## Paragraph Formatting ##

Paragraph formatting is pretty standard as concerns German typesetting conventions. The font used is Charis SIL for Latin parts of the document and is of size 12. Arabic is typeset in Amiri. In order to change the justification of the paper, you have 3 options: (1) left justification, (2) right justification, or (3) justified. Justified is the default because it is also the LaTeX default setting. If you would like to change the justification settings of your paper, use the following commands:

To make the file right justified use `\raggedleft`
To make the file left justified use `\raggedright`

Place either of these commands before the begin document section of the main document file.

## Citing and Sources ##

This package uses Biber. All of your sources should be kept in a .bib file and should be formatted to meet the Biblatex standards. The .bib file should be called the same as the main document file.

# Comments, Suggestions, or Anything Else #

If you have any suggestions, feel free to update the files yourself, I'm open to any submissions or pull requests.
