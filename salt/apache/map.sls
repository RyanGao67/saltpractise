{% if salt.grains.get('os_family') == 'Debian' %}
{% set apache_pkg = 'apache2' %}
{% elif salt.grains.get('os_family') == 'RedHat' %}
{% set apache_pkg = 'httpd' %}
{% endif %}

{% set name = pillar.get('name') %}

