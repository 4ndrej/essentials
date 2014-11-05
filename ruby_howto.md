h1. how to install ruby environment

h2. rbenv
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    source ~/.bash_profile

h2. rbenv plugins
h3. ruby-build
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

h2. build tools
    yum install gcc-c++ openssl-devel

h2. list available ruby versions
    rbenv install -l

h2. install ruby-2.1.4
    time rbenv install -v 2.1.4

h2. setup ruby version
    rbenv global 2.1.4

h2. test
    ruby -v
