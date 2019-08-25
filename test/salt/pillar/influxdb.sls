# -*- coding: utf-8 -*-
# vim: ft=yaml
---
influxdb:
  version: 0.12.0
  no_conf_defaults: false
  use_wget_on_install: true
  logging:
    directory: '/var/log/influxdb'
    file: 'influxd.log'
  conf:
    admin:
      bind-address: ':8083'
      enabled: true
      https-certificate: /etc/ssl/influxdb.pem
      https-enabled: false
    cluster: {}
    collectd:
      enabled: false
    continuous_queries:
      compute-no-more-than: 2m
      compute-runs-per-interval: 10
      enabled: true
      log-enabled: true
      recompute-no-older-than: 10m
      recompute-previous-n: 2
    data:
      dir: /var/lib/influxdb/data
      wal-dir: /var/lib/influxdb/wal
      wal-logging-enabled: true
    graphite:
      - enabled: false
    hinted-handoff:
      dir: /var/lib/influxdb/hh
      enabled: true
      max-age: 168h
      max-size: 1073741824
      purge-interval: 1h
      retry-interval: 1s
      retry-max-interval: 1m
      retry-rate-limit: 0
    http:
      auth-enabled: false
      bind-address: ':8086'
      enabled: true
      https-certificate: /etc/ssl/influxdb.pem
      https-enabled: false
      log-enabled: true
      pprof-enabled: false
      write-tracing: false
    meta:
      bind-address: ':8088'
      cluster-tracing: false
      commit-timeout: 50ms
      dir: /var/lib/influxdb/meta
      election-timeout: 1s
      heartbeat-timeout: 1s
      hostname: localhost
      leader-lease-timeout: 500ms
      raft-promotion-enabled: true
      retention-autocreate: true
    monitor: {}
    opentsdb:
      enabled: false
    registration: {}
    reporting-disabled: true
    retention:
      check-interval: 30m
      enabled: true
    shard-precreation:
      advance-period: 30m
      check-interval: 10m
      enabled: true
    udp:
      - enabled: false
  lookup:
    config: '/etc/influxdb/config.toml'
    etc_default: '/etc/default/influxdb'
    fullname: 'InfluxDB Service User'
    home: '/opt/influxdb'
    logrotate_conf: '/etc/logrotate.d/influxdb'
    shell: '/bin/false'
    system_group: 'influxdb'
    system_user: 'influxdb'
  tmpl:
    config: 'salt://influxdb/files/influxdb.config.jinja'
    etc_default: 'salt://influxdb/files/influxdb.etc_default'
    logrotate: 'salt://influxdb/files/logrotate.conf.jinja'
