/etc/ntp.conf:
  file.managed:
    - source: salt://init/ntp/files/ntp.conf.j2
    - user: root
    - group: wheel
    - mode: '0644'
    - template: jinja

ntpd:
  service.running:
    - enable: true
