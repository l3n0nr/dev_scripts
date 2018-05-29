#!/bin/bash

url="https://www.torproject.org/dist/torbrowser/7.5.3/tor-browser-linux64-7.5.3_en-US.tar.xz"
nome="tor.tar.xz"

## baixando arquivo
wget -c $url -O $nome

## enviando pasta para "/opt"
tar -xvJf $nome -C /opt/

chmod +x ./opt/tor/Browser/start-tor-browser
chmod +x ./opt/tor/start-tor-browser.desktop

