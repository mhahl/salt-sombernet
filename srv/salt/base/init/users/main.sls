mhahl:
  user.present:
    - fullname: Mark Hahl
    - shell: /bin/sh
    - home: /home/mhahl
    - password: $6$0C7b9byx2ArGHu6m$jlVEoXS1lj2EP8PvDV0a1FZ2ptfLG20LRNtRRWm9E0pagEWyT62k0irFFwNNeSnXCyWl82zfzPSrcwqVwJugt1
    - groups:
      - mhahl
      - sudo

  ssh_auth.present:
    - user: mhahl
    - source: salt://init/users/files/mhahl_id_ed25519_sk.pub
    - config: '%h/.ssh/authorized_keys'