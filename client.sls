{% from 'mysql/map.jinja' import mysql with context %}

'mysql client install':
  pkg.installed:
    - name: {{ mysql.client }}

