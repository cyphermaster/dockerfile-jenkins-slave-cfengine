#!/bin/bash
exec 1>&-
exec 2>&-
/var/cfengine/bin/cf-execd -F > /dev/null &
