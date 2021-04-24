#!/usr/bin/bash/

RDB() {

    source /etc/lsb-release && echo "deb https://download.rethinkdb.com/repository/ubuntu-$DISTRIB_CODENAME $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list
    sleep 1
    wget -qO- https://download.rethinkdb.com/repository/raw/pubkey.gpg | sudo apt-key add -
    sleep 1 
    sudo apt update
    sleep 1
    sudo apt install rethinkdb
    
    echo "installation rethinkdb complete"
}

RDB
