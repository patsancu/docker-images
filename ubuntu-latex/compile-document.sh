#! /bin/bash

FOLDER_WITH_TEX_FILES=$1
TEX_FILE_PDF_SUFFIX=$2


docker run -it --rm \
    -e TEX_FILE_PDF_SUFFIX=$TEX_FILE_PDF_SUFFIX \
    -v $FOLDER_WITH_TEX_FILES:/tex_files ubuntu-latex \
    sh -c "cd /tex_files && rm -f $TEX_FILE_PDF_SUFFIX &&  make clean && make $TEX_FILE_PDF_SUFFIX"
