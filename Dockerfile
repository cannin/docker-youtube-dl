FROM ubuntu:16.04

# No prompts
ENV DEBIAN_FRONTEND noninteractive

##### UBUNTU
RUN apt-get -y update
#RUN apt-get -y install software-properties-common

RUN apt-get -y install ffmpeg openssl python
RUN apt-get -y install python3-pip

RUN pip3 install youtube-dl
RUN pip3 install pueue

RUN echo alias dd="function _dd(){ pueue add 'youtube-dl --retries 5 --restrict-filenames --continue --no-mtime $1'; };_dd" >> ~/.bashrc

WORKDIR /data

CMD ["youtube-dl"]
