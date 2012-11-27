#!/bin/bash

# ruby stuff
yum $1 install ruby ruby-devel make gcc gcc-c++
yum $1 install sqlite sqlite-devel
gem install bundler

# those gems are not needed, we can install them via bundler install
gem install sinatra
gem install sinatra-reloader
gem install datamapper
gem install haml
gem install dm-sqlite3-adapter

