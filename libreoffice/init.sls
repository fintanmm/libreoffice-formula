{% from "libreoffice/map.jinja" import libreoffice with context %}

libreoffice:
  pkg:
    - installed
    - name: {{ libreoffice.name }}
