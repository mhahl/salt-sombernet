chrony:
  pkg.installed

/etc/chrony.conf:
  file.managed:
    - source: salt://init/chrony/files/chrony.conf.j2
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja

chronyd.service:
  service.running:
    - enable: true
