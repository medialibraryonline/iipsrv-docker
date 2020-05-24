# iipsrv-docker

A minimal compose stack to deploy [iipsrv](https://github.com/ruven/iipsrv).     
Made with two containers, one running iipsrv with spawn-fcgi, the other running nginx.

Nginx can  handle load balancing to multiple iipsrv instances, please refer to [iipsrv doc](https://iipimage.sourceforge.io/documentation/server/)


Running:

1. **docker-compose up -d**

2. Copy some ptiff,jp2,... into ./data
3. Test

    ```curl http://localhost:8094/iiif/image.tiff/info.json```


Note: the iipsrv image can be built with [alpine](https://github.com/medialibraryonline/iipsrv-docker/blob/master/Dockerfile.alpine) to save space, but is generally slower than the Debian one.