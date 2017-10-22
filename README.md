# Build
```
docker build -t cannin/youtube-dl .
```

# Run
```
docker rm -f ydl; docker run --rm --name ydl -i -v "$PWD:/data" -t cannin/youtube-dl sh -c 'youtube-dl URL'
```
