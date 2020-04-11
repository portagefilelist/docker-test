FROM portagefilelist/pfl-base:latest

RUN touch /root/debugpfl

ADD https://api.github.com/repos/portagefilelist/docker-test/git/refs/heads/master /version.json
RUN mkdir /pfl && git clone https://github.com/portagefilelist/client.git /pfl
RUN cd /pfl && python /pfl/setup.py install

ENV PYTHONIOENCODING=UTF-8
CMD /usr/bin/pfl
