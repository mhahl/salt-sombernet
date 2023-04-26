/etc/profile.d/99-security.sh:
  file.managed:
    - source:
      - salt://init/security/files/security/99-security.sh
    - user: root
    - group: root
    - mode: 755