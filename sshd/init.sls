asenna_sshd:
  pkg.installed:
    - name: openssh-server

ssh_tiedostoa_muokataan:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://PalvelintenHallinta/sshd_config

ssh_banner_tiedosto:
  file.managed:
    - name: /etc/ssh/sshd-banner

ssh_banner_viesti:
  file.append:
    - name: /etc/ssh/sshd_banner
    - text: Tervetuloa orjalle!

sshd:
  service.running:
    - watch:
      - file: /etc/ssh/sshd_config
