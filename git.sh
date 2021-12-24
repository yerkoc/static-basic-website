#!/bin/bash

nginx -g "daemon off;"

while true; do git pull ; sleep 5; done
