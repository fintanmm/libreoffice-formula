/etc/init.d/libreoffice:
    file.managed:
        - source: salt://libreoffice/files/libreoffice
        - user: root
        - group: root
        - mode: 644

libreoffice:
  service:
    - running
    - name: libreoffice
    - enable: True
