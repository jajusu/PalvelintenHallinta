asenna:
  pkg.installed:
    - name: nginx

luo_hakemisto_tutorial:
  file.directory:
    - name: /var/www/tutorial

paivita_sivu:
  file.managed:
    - name: /var/www/tutorial/index.html
    - source: salt://PalvelintenHallinta/index.html

luo_asetukset:
  file.managed:
    - name: /etc/nginx/sites-enabled/tutorial
    - source: salt://PalvelintenHallinta/tutorial

kaynnista_uudestaan:
  service.running:
    - name: nginx
    - watch:
      - file: /var/www/tutorial/index.html
      - file: /etc/nginx/sites-enabled/tutorial
