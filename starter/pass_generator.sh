#!/bin/bash
# Length default is 12, can be passed as argument
LENGTH=${1:-12}
openssl rand -base64 48 | tr -dc 'a-zA-Z0-9!@#%^&*()_+=' | fold -w $LENGTH | head -n 1
