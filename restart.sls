{% from 'mysql/map.jinja' import mysql with context %}

'mysql restart':
  module.wait:
    - name: service.restart
    - m_name: {{ mysql.service }}
    - onchanges:
      - 'mysql server config'
