include:
  - apache

{% set name = salt.pillar.get('namex') %}

check_pillar_values:
  test.check_pillar:
    - present:
      - namex
    - failhard: True

welcome_page:
  file.managed:
    - name: /var/www/html/index.html
    - contents: |
        <!doctype html>
        <body><h1>{{ name }}</h1></body>

