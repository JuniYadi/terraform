#!/bin/bash
sudo apt-get update
sudo apt-get dist upgrade -y
sudo apt-get install -y \
    git \
    nginx \
    apache2-utils