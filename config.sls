{% from 'mysql/map.jinja' import mysql with context %}

include:
  - mysql.restart

'mysql server config':
  file.managed:
    - name: {{ mysql.server_conf }}
    - source: {{ mysql.server_conf_source }}
    - require:
      - pkg: {{ mysql.server }}
