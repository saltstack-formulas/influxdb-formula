# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_package_install = tplroot ~ '.package.install' %}
{%- from tplroot ~ "/map.jinja" import influxdb with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

include:
  - {{ sls_package_install }}

influxdb/config/install:
  file.managed:
    - name: {{ influxdb.config }}
    - source: {{ files_switch(['influxdb.tmpl.jinja'],
                              lookup='influxdb/config/install'
                 )
              }}
    - mode: 644
    - user: {{ influxdb.system_user }}
    - group: {{ influxdb.system_group }}
    - makedirs: True
    - template: jinja
    - require:
      - sls: {{ sls_package_install }}
    - context:
        influxdb: {{ influxdb.conf | json }}
