# Arch Linux Multi-version Python Repository

Available  Python versions:
  - 3.5 (`python35`)
  - 3.6 (`python36`)
  - 3.7 (`python37`)

###### Note: This repo is meant to complete the official Arch Linux repos. We commit to providing all active Python releases, the missing versions here should be available in the official Arch Linux repos. Inactive releases could still be provided at our sole discretion.

Add a repo entry in your `/etc/pacman.conf`:
```ini
[python]
SigLevel = Optional
Server = https://ffy00.github.io/arch-python-repo/
```

### Version table (w/ distribution per repository)

| Version |  State   |        End of Life       |          Repo          |  Package   |
|:-------:|:--------:| ------------------------ | ---------------------- | ----------:|
| 2.7     | Active   | *2020-01-01 **(ended)*** | [`extra`] (Arch Linux) | `python2`  |
| 3.5     | Active   | 2020-09-13               | [`python`] (this)      | `python35` |
| 3.6     | Active   | 2021-12-23               | [`python`] (this)      | `python36` |
| 3.7     | Active   | 2023-06-27               | [`python`] (this)      | `python37` |
| 3.8     | Active   | 2024-10                  | [`extra`] (Arch Linux) | `python`   |

[`extra`]: https://www.archlinux.org/packages/?repo=Extra
[`python`]: https://github.com/FFY00/arch-python-repo
