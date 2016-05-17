{% from "influxdb/map.jinja" import influxdb_settings with context %}

include:
  - pip

toml-python-module:
  pip.installed:
    - name: {{ influxdb_settings.toml_module }}
    - require:
      - pkg: pip
