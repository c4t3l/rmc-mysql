{% from 'mysql/map.jinja' import mysql with context %}

'mysql python install':
  pkg.installed:
    - name: {{ mysql.python }}
