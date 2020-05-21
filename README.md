# Arch Linux Multi-version Python Repository

Available  Python versions:
  - 3.6 (`python36`)
  - 3.7 (`python37`)

###### Note: This repo is meant to complete the official Arch Linux repos. We commit to providing all active Python releases, the missing versions here should be available in the official Arch Linux repos. Inactive releases could still be provided at our sole discretion.

Add a repo entry in your `/etc/pacman.conf`:
```ini
[python]
SigLevel = Optional
Server = https://ffy00.github.io/arch-python-repo/
```
