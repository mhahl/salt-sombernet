/etc/resolv.conf:
  file.managed:
    - source: salt://init/dns/files/resolv.conf.j2
    - user: root
    - group: wheel
    - mode: '0644'
    - template: jinja