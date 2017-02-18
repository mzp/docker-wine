# Wine + VNC
## Run

```
docker run -i -t -d -P --name wine-data -v /root/.wine alpine /bin/sh
docker run -it -p 5900:5900 --volumes-from wine-data mzp/wine bash
```

and connect to vnc://localhost:5900
