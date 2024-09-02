#!/bin/bash

# Iniciar el servicio cron en segundo plano
/usr/sbin/cron -f &

# Iniciar la aplicación Node.js
npm start