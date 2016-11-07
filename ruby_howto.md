# how to install ruby environment

## rbenv
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    source ~/.bashrc

## rbenv plugins

### plugin ruby-build
ruby-build is an rbenv plugin that provides an rbenv install command to compile and install different versions of Ruby on UNIX-like systems.
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    
### plugin rbenv-gem-rehash
Never run rbenv rehash again. This rbenv plugin automatically runs rbenv rehash every time you install or uninstall a gem.
    git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

## build tools
    yum install gcc-c++ openssl-devel

## list available ruby versions
    rbenv install -l

## install ruby-2.1.4
    time rbenv install -v 2.1.4

## setup ruby version
    rbenv global 2.1.4

## test
    ruby -v