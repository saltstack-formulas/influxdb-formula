{% from "influxdb/map.jinja" import influxdb_settings with context %}

{% if influxdb_settings['version'] is defined %}
  {% set influxdb_version = salt['pillar.get']('influxdb:version') %}
  {% set major, minor = influxdb_version.split('.')[:2] %}

  {% if major == '0' and minor|int < 10 %}
    {% set base_url = 'http://s3.amazonaws.com/influxdb' %}
    {% if grains['os_family'] == 'Debian' %}
      {% set filename = "influxdb_" + influxdb_settings['version'] + "_" + grains['osarch'] + ".deb" %}
    {% elif grains['os_family'] == 'RedHat' %}
      {% set filename = "influxdb-" + influxdb_settings['version'] + "-1." + grains['osarch'] + ".rpm" %}
    {% endif %}
  {% elif major == '0' and minor >= 10 and minor|int < 13 %}
    {% set base_url = 'http://s3.amazonaws.com/influxdb' %}
    {% if grains['os_family'] == 'Debian' %}
      {% set filename = "influxdb_" + influxdb_settings['version'] + "-1_" + grains['osarch'] + ".deb" %}
    {% elif grains['os_family'] == 'RedHat' %}
      {% set filename = "influxdb-" + influxdb_settings['version'] + "-1." + grains['osarch'] + ".rpm" %}
    {% endif %}
  {% else %}
    {% set base_url = 'https://dl.influxdata.com/influxdb/releases' %}
    {% if grains['os_family'] == 'Debian' %}
      {% set filename = "influxdb_" + influxdb_settings['version'] + "_" + grains['osarch'] + ".deb" %}
    {% elif grains['os_family'] == 'RedHat' %}
      {% set filename = "influxdb-" + influxdb_settings['version'] + "." + grains['osarch'] + ".rpm" %}
    {% endif %}
  {% endif %}
{% endif %}

{% if influxdb_settings['use_wget_on_install'] == True %}
influxdb_package:
  cmd.run:
    - name: wget -qO /tmp/{{ filename }} {{ base_url }}/{{ filename }}
    - unless: test -f /tmp/{{ filename }}

influxdb_remove_broken_download:
  file.absent:
    - name: /tmp/{{ filename }}
    - onfail:
      - cmd: influxdb_package


influxdb_install:
  pkg.installed:
    - sources:
      - influxdb: /tmp/{{ filename }}
    - require:
      - cmd: influxdb_package
    - watch:
      - cmd: influxdb_package
{% else %}


influxdb_install:
  pkg.installed:
    - sources:
      - influxdb: {{ base_url }}/{{ filename }}

{% endif %}

influxdb_group:
  group.present:
    - name: {{ influxdb_settings.system_group }}
    - system: True

influxdb_user:
  user.present:
    - name: {{ influxdb_settings.system_user }}
    - fullname: {{ influxdb_settings.fullname }}
    - shell: {{ influxdb_settings.shell }}
    - home: {{ influxdb_settings.home }}
    - gid: {{ influxdb_settings.system_user }}
    - require:
      - group: influxdb_group

influxdb_log:
  file.directory:
    - name: {{ influxdb_settings.logging.directory }}
    - user: {{ influxdb_settings.system_user }}
    - group: {{ influxdb_settings.system_group }}
    - mode: 755
    - require:
      - group: influxdb_group
      - user: influxdb_user

influxdb_logrotate:
  file.managed:
    - name: {{ influxdb_settings.logrotate_conf }}
    - source: {{ influxdb_settings.tmpl.logrotate }}
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - watch:
      - file: influxdb_log

influxdb_start:
  service.running:
    - name: {{ influxdb_settings.service }}
    - enable: True
    - watch:
      - pkg: influxdb_install
    - require:
      - pkg: influxdb_install
