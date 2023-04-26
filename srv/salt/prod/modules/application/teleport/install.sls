teleport_configuration:
  file.managed:
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja
    - names:

      # Teleport yum config
      - /etc/yum.repos.d/teleport.repo:
        - source: salt://modules/application/teleport/files/teleport.repo.j2

      # Teleport configuration
      - /etc/teleport.yaml:
        - source: salt://modules/applicatio/teleport/files/teleport.yaml.j2

teleport_packages:
  pkg.installed:
    - name: teleport

  service.running:
    - name: teleport
    - enable: true
    - require:
        - pkg: teleport

teleport_firewall_ports:
  firewalld.present:
    - name: public
    - default: False
    - ports:
      - 22/tcp
      - 80/tcp
      - 443/tcp
      - 4505/tcp
      - 4506/tcp
      - 3021/tcp
      - 3022/tcp
      - 3025/tcp
