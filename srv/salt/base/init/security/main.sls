/etc/profile.d/99-security.sh:
  file.managed:
    - source:
      - salt://init/security/files/99-security.sh
    - user: root
    - group: wheel
    - mode: 755

/etc/ssh/sshd_config:
  file.managed:
    - source:
      - salt://init/security/files/sshd_config.j2
    - user: root
    - group: wheel
    - mode: 644
    - template: jinja
