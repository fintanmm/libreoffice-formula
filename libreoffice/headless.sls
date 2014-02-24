/etc/init.d/libreoffice:
    file.managed:
        - source: salt://libreoffice/files/libreoffice
        - user: root
        - group: root
        - mode: 0755
        - template: jinja
        - defaults:
            host: {{ salt['pillar.get']('libreoffice:host', '127.0.0.1') }}
            port: {{ salt['pillar.get']('libreoffice:port', 8100) }}
            home: {{ salt['pillar.get']('libreoffice:home', '/home/libreoffice') }}

libreoffice:
    service:
        - running
        - name: libreoffice
        - enable: True
