#!/bin/bash
export $(grep -v '^#' /media/gopi/2Tb/apps/n8n/n8n.env | xargs)
/home/gopi/.nvm/versions/node/v22.22.0/bin/n8n start
