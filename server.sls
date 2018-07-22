{% from 'mysql/map.jinja' import mysql with context %}

{% set passval = salt['pillar.get']('mysql:root:password') %}

{% if salt['grains.get']('os_family') == 'Debian' %}

'mysql debconf install':
  pkg.installed:
    - name: debconf

'mysql debconf settings':
  debconf.set:
    - name: mysql-server
    - data: 
        'mysql-server/root_password': {'type': 'password', 'value': '{{ passval }}' }
        'mysql-server/root_password_again': {'type': 'password', 'value': '{{ passval }}'}
    - require:
      - pkg: 'mysql debconf install'
    - require_in:
      - pkg: 'mysql server install'

{% endif %}


'mysql server install':
  pkg.installed:
    - name: {{ mysql.server }}
