#!/usr/bin/python

import syslog

syslog.openlog(logoption=syslog.LOG_PID, facility=syslog.LOG_MAIL)
syslog.syslog("Enviando log para facilidade MAIL")
syslog.closelog()
