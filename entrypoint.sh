#!/bin/bash

cmd=" -proxy $PROXY"

if [[ $LISTEN_HTTP ]]; then
  cmd+=" -listen-http $LISTEN_HTTP"
fi

if [[ $LISTEN_HTTPS ]]; then
  cmd+=" -listen-https $LISTEN_HTTPS -ssl-key $SSL_KEY -ssl-crt $SSL_CRT"
fi

echo "Your parameters for TELEPORT is $cmd"

/root/teleport $cmd