FROM frolvlad/alpine-glibc:alpine-3.10 as build

ARG TMOD_VERSION=0.11.8.5
ARG TERRARIA_VERSION=1353

RUN apk update &&\
    apk add --no-cache --virtual build curl unzip &&\
    apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing mono

WORKDIR /tmod

RUN cp /usr/lib/libMonoPosixHelper.so .

# Server URL changed or down?
#RUN curl -SLO "http://terraria.org/server/terraria-server-${TERRARIA_VERSION}.zip" &&\
#    unzip terraria-server-*.zip &&\
#    rm terraria-server-*.zip &&\
#    cp --verbose -a "${TERRARIA_VERSION}/Linux/." . &&\
#    rm -rf "${TERRARIA_VERSION}" &&\
#    rm TerrariaServer.bin.x86 TerrariaServer.exe


RUN curl -SL "https://github.com/tModLoader/tModLoader/releases/download/v${TMOD_VERSION}/tModLoader.Linux.v${TMOD_VERSION}.tar.gz" | tar -xvz &&\
    rm -r lib tModLoader.bin.x86 tModLoaderServer.bin.x86 &&\
    chmod u+x tModLoaderServer*

FROM rfvgyhn/tmodloader:latest

WORKDIR /terraria-server
COPY --from=build /tmod ./

