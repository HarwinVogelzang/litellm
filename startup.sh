#!/bin/bash
gunicorn litellm.proxy.proxy_server:app --bind=0.0.0.0:$PORT
