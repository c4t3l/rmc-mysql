'mysql root user':
  mysql_user.present:
    - name: {{ salt['pillar.get']('mysql:root:name') }} 
    - password: {{ salt['pillar.get']('mysql:root:password') }}
    - host: localhost
