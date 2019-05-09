{% from "apache/map.jinja" import apache with context %}

apache_vhosts:
  file.managed:
    - name: {{ apache.vhosts_loc }}
    - source: salt://apache/files/default_vhosts.conf
    - makedirs: True
    - require:
      - pkg: {{ apache.package }}
