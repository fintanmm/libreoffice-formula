{% from "libreoffcie/map.jinja" import libreoffcie with context %}

libreoffcie:
  pkg:
    - installed
    - name: {{ libreoffcie.pkg }}
