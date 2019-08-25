# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import influxdb with context %}

influxdb/package/install:
  pkg.installed:
    - name: {{ influxdb.pkg.name }}

influxdb/package/toml/install:
  pkg.installed:
    - name: {{ influxdb.toml_pkg }}
