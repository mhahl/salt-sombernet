/etc/profile.d/99-security.sh:
  file.managed:
    - source:
      - salt://init/security/files/99-security.sh
    - user: root
    - group: wheel
    - mode: 755
