# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import influxdb with context %}
{%- from tplroot ~ "/macros.jinja" import format_kwargs with context %}

influxdb/repo/install:
  pkgrepo.managed:
    {{- format_kwargs(influxdb.repo) }}

{%- if influxdb.repo_python is defined %}
influxdb/repo/python-backports/install:
  pkgrepo.managed:
    {{- format_kwargs(influxdb.repo_python) }}
{% endif %}
