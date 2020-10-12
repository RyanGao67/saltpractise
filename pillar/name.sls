{% set lookup = {
    'jerry': "Jerry's World",
    'stuart': "Stuart's World",   
} %}

{% set name = lookup[grains.id] %}

# avoid problem by casting to json (double quoting)
namex: {{ name | json() }}
