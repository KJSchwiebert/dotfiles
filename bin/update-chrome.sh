#!/bin/bash

url="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
curl -L -o /tmp/chrome.deb $url
sudo apt install /tmp/chrome.deb
