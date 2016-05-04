# Install Kibana as a service
extend:
  kibana:
    service.running:
      - enable: True
      - watch:
        - pkg: kibana
      - require:
        - pkg: kibana
