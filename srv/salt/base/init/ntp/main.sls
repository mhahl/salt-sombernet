ntpd:
  pkg.installed

/etc/ntp.conf:
  file.managed:
    - source: salt://init/ntp/files/ntp.conf.j2
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja

ntpd.service:
  service.running:
    - enable: true
