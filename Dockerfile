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

RUN wget https://ftp.mozilla.org/pub/firefox/releases/65.0/linux-x86_64/en-US/firefox-65.0.tar.bz2
RUN tar xjf firefox-65.0.tar.bz2  -C /opt/
RUN mv /usr/lib/firefox/firefox /usr/lib/firefox/firefox_backup
RUN ln -s /opt/firefox/firefox /usr/bin/firefox/firefox

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
RUN tar -xvzf geckodriver-v0.24.0-linux64.tar.gz
RUN rm geckodriver-v0.24.0-linux64.tar.gz
RUN chmod +x geckodriver
RUN cp geckodriver /usr/local/bin/

RUN mkdir /robot_tests
WORKDIR /robot_tests

COPY . .
RUN robot features/specs
