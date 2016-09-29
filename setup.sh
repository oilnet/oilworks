#!/bin/bash

echo "I'm going to assume I'm in a subdir called 'oilworks' which lives beneath the main project dir"
echo "and that the main project dir is otherwise empty. If this is INCORRECT, please hit Ctrl-C NOW"
echo "to abort and prevent possible data loss."
echo
echo "Otherwise, please hit ENTER to confirm and continue."
read

cd ..

echo "What is your project's name? Only lowercase, no spaces, please: "
read NAME
cp oilworks/sample.bib $NAME.bib
cp oilworks/sample.tex $NAME.tex
ln -s oilworks/images
ln -s oilworks/lib
cat oilworks/Makefile | sed s/sample/$NAME/g > Makefile

echo "All done! Type 'make once' to build $NAME.pdf."
echo "Have a nice day!"
