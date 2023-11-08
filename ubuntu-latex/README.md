### How to use
Assuming you're in a folder that has a tex file, maybe the one [here](git@github.com:patsancu/cv.git)


```
docker run -it --rm -w /home/cv -v $(pwd):/home/cv/ patsancu/latex-ubuntu:0.1 /usr/bin/pdflatex *.tex
```


### This is an old how to
```
FOLDER_WITH_TEX_FILES=~/dev/other/cv
TEX_FILE_PDF_SUFFIX=cv_generated.pdf
DOCKER_IMAGE_NAME=ubuntu-latex


docker build . -t $DOCKER_IMAGE_NAME && \
docker run -it --rm \
    -e TEX_FILE_PDF_SUFFIX=cv_generated.pdf \
    -v $FOLDER_WITH_TEX_FILES:/tex_files \
    $DOCKER_IMAGE_NAME \
    sh -c "cd /tex_files && rm -f $TEX_FILE_PDF_SUFFIX &&  make clean && make $TEX_FILE_PDF_SUFFIX"
```

or
```
./compile-document.sh $FOLDER_WITH_TEX_FILES $TEX_FILE_PDF_SUFFIX
```
