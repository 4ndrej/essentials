#! /bin/bash

# Author: Shirish Padalkar (https://twitter.com/_Garbage_)

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 infoq_presentation_url"
  exit 1
fi

url_with_spaces=`curl -A "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10" $1 | grep "<source src=" | tr -dc "[:print:]"`
url=${url_with_spaces//<source src=/}

echo "You can download this video from ${url// \/>/}"
