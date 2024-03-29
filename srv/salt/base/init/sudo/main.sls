sudo:
  pkg.installed:
    - name: sudo

  group.present:
    - system: True
