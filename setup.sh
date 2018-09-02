#!/bin/bash

echo "I'm going to assume I'm in a subdir called 'oilworks' which lives beneath the main project dir"
echo "and that the main project dir is otherwise empty. If this is INCORRECT, please hit Ctrl-C NOW"
echo "to abort and prevent possible data loss."
echo
echo "Otherwise, please hit ENTER to confirm and continue."
read

if [ "$(fc-list | grep 'Charis SIL:style=Regular')" == "" ]; then
  echo "Charis SIL font not installed. Downloading into oilworks directory."; (
    wget --quiet -O /tmp/Charis.zip https://software.sil.org/downloads/r/charis/CharisSIL-5.000.zip
    cd /tmp
    unzip /tmp/Charis.zip
  ); (
    mkdir -p fonts
    cd fonts 
    mv /tmp/Charis*/*.ttf .
    rm -rf /tmp/Charis*
  )
fi

if [ "$(fc-list | grep 'Scheherazade:style=Regular')" == "" ]; then
  echo "Scheherazade font not installed. Downloading into oilworks directory."; (
    wget --quiet -O /tmp/Scheherazade.zip https://software.sil.org/downloads/r/scheherazade/Scheherazade-2.100.zip
    cd /tmp
    unzip /tmp/Scheherazade.zip
  ); (
    mkdir -p fonts
    cd fonts 
    mv /tmp/Scheherazade*/*.ttf .
    rm -rf /tmp/Scheherazade*
  )
fi

if [ "$(fc-list | grep 'Andika:style=Regular')" == "" ]; then
  echo "Andika font not installed. Downloading into oilworks directory."; (
    wget --quiet -O /tmp/Andika.zip https://software.sil.org/downloads/r/andika/Andika-5.000.zip
    cd /tmp
    unzip /tmp/Andika.zip
  ); (
    mkdir -p fonts
    cd fonts 
    mv /tmp/Andika*/*.ttf .
    rm -rf /tmp/Andika*
  )
fi

(
  cd ..
  echo "What is your project's name? Only lowercase, no spaces, please: "
  read NAME
  cp oilworks/sample.bib $NAME.bib
  cp oilworks/sample.tex $NAME.tex
  ln -s oilworks/lib
  mkdir -p images
  cp oilworks/images/uofl_official_seal.png images/
  cp oilworks/.gitignore .
  cat oilworks/Makefile | sed s/sample/$NAME/g > Makefile
  git add .
  git commit -a -m "Initial commit."
)

echo "All done! Go up one directory ('cd ..') and type 'make once' to build $NAME.pdf."
echo "Have a nice day!"
