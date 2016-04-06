# Install Elasticsearch repository
{%- set repo_version = salt['pillar.get']('kibana:repo_version', '4.5') %}

kibana_repo:
  pkgrepo.managed:
    - humanname: Kibana Repo
    - name: deb http://packages.elasticsearch.org/kibana/{{ repo_version }}/debian stable main
    - file: /etc/apt/sources.list.d/kibana.list
    - keyid: D88E42B4
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: kibana
