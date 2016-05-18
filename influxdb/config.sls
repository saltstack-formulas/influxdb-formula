{% from "influxdb/map.jinja" import influxdb_settings with context %}

include:
  - influxdb
  - pip

toml-python-module:
  pip.installed:
    - name: {{ influxdb_settings.toml_module }}
    - require:
      - pkg: pip

influxdb_config:
  file.managed:
    - name: {{ influxdb_settings.config }}
    - source: {{ influxdb_settings.tmpl.config }}
    - user: root
    - group: root
    - makedirs: True
    - dir_mode: 755
    - mode: 644
    - template: jinja
    - listen_in:
      - service: {{ influxdb_settings.service }}
    - require:
      - pip: {{ influxdb_settings.toml_module }}
    - require_in:
      - service: {{ influxdb_settings.service }}


influxdb_default:
  file.managed:
    - name: {{ influxdb_settings.etc_default }}
    - source: {{ influxdb_settings.tmpl.etc_default }}
    - user: root
    - group: root
    - mode: 755
    - template: jinja
