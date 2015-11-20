#!/bin/bash -ex

rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm || true
yum install -y newrelic-php5 || true

export NR_INSTALL_SILENT=true
export NR_INSTALL_KEY=2dbaa4855f4538655f7e2bc50a81d75f28b6b84c
newrelic-install install
