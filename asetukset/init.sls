#Ei toimi, keksi muuta.
#aseta_resoluutio:
#  cmd.script:
#    - name: resoluutio.sh
#    - source: salt://PalvelintenHallinta/resoluutio.sh
aseta_reso:
  file.managed:
    - name: /home/jarkko/.xprofile
    - source: salt://PalvelintenHallinta/.xprofile

aseta_nappis:
  file.managed:
    - name: /etc/default/keyboard
    - source: salt://PalvelintenHallinta/keyboard

#aseta_nappis2:
#  cmd:
#    - run:
#      - 'setxkbmap fi'

nano_asetukset:
  file.append:
    - name: /etc/nanorc
    - text: set linenumbers
