#!/bin/sh                                                                                                                                                                                    
cp -rLT /etc/letsencrypt/live/turn.ddhub.im/ /etc/coturn/certs/
chown -R turnserver:turnserver /etc/coturn/
chmod -R u+rwx /etc/coturn/
systemctl start coturn
