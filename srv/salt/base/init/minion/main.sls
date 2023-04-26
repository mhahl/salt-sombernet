salt-minion:
  pkg.installed

/etc/salt/minion:
  file.managed:
    - source: salt://init/minion/files/minion.j2 
    - user: root
    - group: root
    - mode: '0644'
#    - template: jinja

salt-minion.service:
  service.running:
      - enable: true
