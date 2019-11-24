#!/bin/bash
chmod +x /data/env.sh
source /data/env.sh
supervisord -c /etc/supervisor/conf.d/supervisord.conf 