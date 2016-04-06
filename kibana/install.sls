# Install kibana
{%- set version = salt['pillar.get']('kibana:version') %}

kibana:
  pkg:
    - installed
{%- if version is defined %}
    - version: {{ version }}
{%- endif %}
