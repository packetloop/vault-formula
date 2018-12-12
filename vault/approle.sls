{% from "vault/map.jinja" import vault with context %}

enable_approle:
  cmd.run:
    - name: vault auth enable approle
    - env:
      - VAULT_ADDR: {{ vault.addr }}
      - VAULT_TOKEN: {{ vault.token }}
    - unless: vault auth list | grep approle
