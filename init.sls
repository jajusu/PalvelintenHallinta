asenna_ohjelmat:
  pkg.installed:
    - pkgs:
      - git
      - unzip
      - bash-completion

aseta_resoluutio:
  cmd.script:
    - name: resoluutio.sh
    - source: salt://PalvelintenHallinta/resoluutio.sh

aseta_nappis:
  file.managed:
    - name: /etc/default/keyboard
    - source: salt://PalvelintenHallinta/keyboard
