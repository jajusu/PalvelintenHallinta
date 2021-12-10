ufw:
  pkg.installed

/etc/ufw/user6.rules:
  file.managed:
    - source: salt://PalvelintenHallinta/user6.rules
    - mode: 644

/etc/ufw/user.rules:
  file.managed:
    - source: salt://PalvelintenHallinta/user.rules
    - mode: 644

/etc/ufw/ufw.conf:
  file.managed:
    - source: salt://PalvelintenHallinta/ufw.conf
    - mode: 644

ufwservice:
  service.running:
    - name: ufw
    - watch:
      - file: /etc/ufw/user6.rules
      - file: /etc/ufw/user.rules
      - file: /etc/ufw/ufw.conf

salt_minion:
  service.running:
    - name: salt-minion
    - watch: 
      - file: /etc/ufw/user6.rules
      - file: /etc/ufw/user.rules
      - file: /etc/ufw/ufw.conf
