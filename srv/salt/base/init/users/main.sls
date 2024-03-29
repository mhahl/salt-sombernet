mhahl:
  user.present:
    - fullname: Mark Hahl
    - shell: /bin/sh
    - home: /home/mhahl
    - groups:
      - wheel
      
  ssh_auth.present:
    - user: mhahl
    - source:  source: salt://init/users/files/mhahl_id_ed25519_sk.pub