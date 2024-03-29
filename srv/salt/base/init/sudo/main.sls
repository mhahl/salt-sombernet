sudo:
  pkg.installed:
    - name: sudo

  group.present:
    - system: True

/usr/local/etc/sudoers.d/sudo:
  file.managed:
    - source: salt://init/sudo/files/sudo.j2
    - user: root
    - group: wheel
    - mode: '0644'
    - template: jinja
