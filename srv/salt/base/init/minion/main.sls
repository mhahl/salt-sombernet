py29-salt:
  pkg.installed

/usr/local/etc/salt/minion:
  file.managed:
    - source: salt://init/minion/files/minion.j2 
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja

salt_minion:
  service.running:
      - enable: true
