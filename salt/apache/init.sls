{% from "apache/map.sls" import apache_pkg with context %}

install_apache:
  pkg.installed:
    - name: {{ apache_pkg }}

start_apache:
  service.running:
    - name: {{ apache_pkg }}
    # Explicitly enable to start on boot because we need to manage centos as well
    - enable: True
    - require:
      - pkg: install_apache

