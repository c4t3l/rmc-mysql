{% from 'mysql/map.jinja' import mysql with context %}
'mysql service enable':
  service.running:
    - name: {{ mysql.service }}

