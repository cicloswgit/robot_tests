FROM python:3.6-alpine

RUN apk add --no-cache \
    dbus \
    ttf-freefont \
    firefox-esr \
    xvfb

RUN pip install --no-cache-dir \
  robotframework==3.1.1 \
  robotframework-python3==2.9 \
  robotframework-seleniumlibrary==3.3.1 \
  selenium==3.141.0\
  docutils

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
RUN tar -xvzf geckodriver-v0.24.0-linux64.tar.gz
RUN rm geckodriver-v0.24.0-linux64.tar.gz
RUN chmod +x geckodriver
RUN cp geckodriver /usr/local/bin/


COPY entry_point.sh /opt/bin/entry_point.sh
ENV SCREEN_WIDTH 1280
ENV SCREEN_HEIGHT 720
ENV SCREEN_DEPTH 16

RUN mkdir /robot_tests
WORKDIR /robot_tests

COPY . .
RUN chmod +x entry_point.sh
ENTRYPOINT [ "entry_point.sh" ]


RUN robot features/specs