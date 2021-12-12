{% if "Ubuntu" == grains["os"] %}
{%      set ffversion = "firefox" %}
{% else %}
{%      set ffversion = "firefox-esr" %}
{% endif %}
{{ ffversion }}:
  pkg.installed

asenna_ohjelmat:
  pkg.installed:
    - pkgs:
      - git
      - unzip
      - bash-completion
      - openssh-server
      - apache2
      - nano
      - curl
