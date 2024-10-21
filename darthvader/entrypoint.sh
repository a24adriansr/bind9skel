#!/bin/bash

# Comentar la carga del módulo imklog en rsyslog.conf
sed -i 's/^module(load="imklog")/#module(load="imklog")/' /etc/rsyslog.conf


# Iniciar rsyslog
rsyslogd
echo "iniciando named"


# Iniciar BIND (named)
/etc/init.d/named start
echo "mostrando logs" 
# Hacer tail de un archivo de log temporal en lugar de syslog
tail -f /var/log/syslog
