#!/bin/bash

tar -cf logs.tar /var/log
gzip logs.tar
ls logs.tar.gz
