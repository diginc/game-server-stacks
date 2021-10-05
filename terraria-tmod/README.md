# Terraria tMod docker-compose

Terraria tModLoader server.  Used for Calamity Mod in my case.

Image used: https://github.com/Rfvgyhn/tmodloader-docker (Stale, building updated PR fork for latest)

## Optional notify container for non 24/7 servers

Notify container for discord, dead simple webhook message poster to notify if server is up/down.  Include a MSG with your hours.

Edit your crontab (`crontab -e`) with hours you what your server to maintain. Slightly odd to not just do 24/7 but I believe it encourage more group play if you set server hours.

``` crontab
PATH=/usr/local/bin:/usr/bin:/bin
45 20 * * 2-5  /home/a/game-server-stacks/terraria-tmod/online.sh
0 0 * * 3-6    /home/a/game-server-stacks/terraria-tmod/offline.sh
```

