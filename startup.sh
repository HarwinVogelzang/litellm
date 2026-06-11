#!/bin/bash
gunicorn litellm.proxy.proxy_server:app \
  --bind=0.0.0.0:$PORT \
  --workers=1 \
  --timeout=600 \
  --env LITELLM_CONFIG=/home/site/wwwroot/config.yaml
