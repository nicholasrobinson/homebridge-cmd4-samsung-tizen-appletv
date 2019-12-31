# Motivation

The homebridge-samsung-tizen issue:
https://github.com/tavicu/homebridge-samsung-tizen/issues/100

Prevents AppleTV being configured as an *Input* or *Switch*. This script creates a standlone switch to open the AppleTV app on a Samsung Tizen device via Homebridge.

# Example config.json
```
...
    {
        "platform": "Cmd4",
        "name": "Cmd4",
        "accessories": [
            {
                "type": "Switch",
                "displayName": "<SUMSUNG_TV_IP>",
                "on": "FALSE",
                "name": "LivingRoomTvAppleTv",
                "state_cmd": "<PATH_TO>/AppleTV.sh",
                "polling": true,
                "interval": 5,
                "timeout": 4000
            }
        ]
   }
...
```