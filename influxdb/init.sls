{% from "influxdb/map.jinja" import map with context %}
{% from "influxdb/map.jinja" import influxdb with context %}

{% if grains['os_family'] == 'Debian' or 'Ubuntu' %}
{% if influxdb['version'] is defined %}
  {% set filename = "influxdb_" + influxdb['version'] + "_" + grains['osarch'] + ".deb" %}
{% else %}
  {% set filename = "influxdb_latest_" + grains['osarch'] + ".deb" %}
{% endif %}
{% elif grains['os_family'] == 'RedHat' %}
{% if influxdb['version'] is defined %}
  {% set filename = "influxdb-" + influxdb['version'] + "-" + grains['osarch'] + ".rpm" %}
{% else %}
  {% set filename = "influxdb-latest-1" + grains['osarch'] + ".rpm" %}
{% endif %}
{% endif %}

influxdb_package:
  cmd.run:
    - name: wget -qO /tmp/{{ filename }} http://s3.amazonaws.com/influxdb/{{ filename }}
    - unless: test -f /tmp/{{ filename }}

influxdb_install:
  pkg.installed:
    - sources:
      - influxdb: /tmp/{{ filename }}
    - require:
      - cmd: influxdb_package
    - watch:
      - cmd: influxdb_package

influxdb_confdir:
  file.directory:
    - name: /etc/influxdb
    - owner: root
    - group: root
    - mode: 755

influxdb_config:
  file.managed:
    - name: /etc/influxdb/config.toml
    - source: salt://influxdb/templates/config.toml.jinja
    - user: root
    - group: root
    - mode: 644
    - template: jinja

influxdb_init:
  file.managed:
    - name: /etc/init.d/influxdb
    - source: salt://influxdb/templates/influxdb.service.jinja
    - user: root
    - group: root
    - mode: 755
    - template: jinja

influxdb_user:
  user.present:
    - name: influxdb
    - fullname: InfluxDB Service User
    - shell: /bin/false
    - home: /opt/influxdb

influxdb_log:
  file.directory:
    - name: {{ influxdb["logging"]["directory"] }}
    - user: influxdb
    - group: influxdb
    - mode: 755

influxdb_logrotate:
  file.managed:
    - name: /etc/logrotate.d/influxdb
    - source: salt://influxdb/templates/logrotate.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - watch:
      - file: influxdb_log

influxdb_start:
  service.running:
    - name: influxdb
    - enable: True
    - watch:
      - pkg: influxdb_install
      - file: influxdb_config
    - require:
      - pkg: influxdb_install
      - file: influxdb_config
