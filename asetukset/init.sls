#Ei toimi, keksi muuta.
#aseta_resoluutio:
#  cmd.script:
#    - name: resoluutio.sh
#    - source: salt://PalvelintenHallinta/resoluutio.sh

aseta_nappis:
  file.managed:
    - name: /etc/default/keyboard
    - source: salt://PalvelintenHallinta/keyboard

nano_asetukset:
  file.append:
    - name: /etc/nanorc
    - text: set linenumbers
