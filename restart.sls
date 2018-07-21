'mysql restart':
  module.wait:
    - name: service.restart
    - m_name: mariadb
    - onchanges:
      - 'mysql server config'
