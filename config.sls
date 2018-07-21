'mysql server config':
  file.managed:
    - name: /etc/my.cnf.d/server.cnf
    - source: salt://mysql/files/server.cnf

