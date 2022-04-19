Just run this, it'll produce a png image in your current folder
```
docker run --rm -v $(pwd):/build -it patsancu/qrencode qrencode -o '/build/qrcode.png'
```
Or, to build it here:
```
docker build -t patsancu/qrencode . && docker run --rm -v $(pwd):/build -it patsancu/qrencode qrencode -o '/build/qrcode.png' 'WIFI:S:$WIFI_SSID_NAME;T:WPA;P:$PASSWORD;;'
```

