FROM debian
RUN apt update && apt install -y build-essential git libtiff-dev autoconf libtool pkg-config spawn-fcgi
RUN git clone https://github.com/ruven/iipsrv.git /tmp/iipsrv
WORKDIR /tmp/iipsrv
RUN ./autogen.sh && ./configure && make
WORKDIR /iipsrv
RUN cp /tmp/iipsrv/src/iipsrv.fcgi .