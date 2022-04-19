```
docker build -t patsancu/youtube-dl
docker run -it --rm -v $(pwd):/downloads patsancu/youtube-dl https://www.youtube.com/watch?v=SOME_STRING_ID
```
