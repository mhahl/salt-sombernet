mhahl:
  user.present:
    - fullname: Mark Hahl
    - shell: /bin/sh
    - home: /home/mhahl
    - groups:
      - mhahl
      - sudo

  ssh_auth.present:
    - user: mhahl
    - source: salt://init/users/files/mhahl_id_ed25519_sk.pub
    - config: '%h/.ssh/authorized_keys'