# Arch Linux Multi-version Python Repository

Available  Python versions:
  - 3.4 (`python34`)
  - 3.5 (`python35`)
  - 3.6 (`python36`)
  - 3.7 (`python37`)
  - 3.8 (`python38`)
  - 3.9 (`python39`)
  - 3.10 (`python310`)
  - 3.11 (`python311`)

###### Note: This repo is meant to complete the official Arch Linux repos. We commit to providing all active Python releases, the missing versions here should be available in the official Arch Linux repos. Inactive releases could still be provided at our sole discretion.

### Configuration

###### The old repo (hosted via Github Pages) is broken (see [#13]), so I am temporarily hosting the repo on pkgbuild.com.

Add a repo entry in your `/etc/pacman.conf`:
```ini
[python]
Server = https://pkgbuild.com/~ffy00/python-repo/
```

<details>
  <summary>Old repo</summary>

  Add a repo entry in your `/etc/pacman.conf`:
  ```ini
  [python]
  SigLevel = Optional
  Server = https://ffy00.github.io/arch-python-repo/
  ```
</details>

### Version table (w/ distribution per repository)

| Version |      State      | End of Life  |          Repo          |  Package   |
|:-------:|:---------------:| ------------ | ---------------------- | ----------:|
| 2.7     | **End of life** | *2020-01-01* | [`extra`] (Arch Linux) | `python2`  |
| 3.5     | **End of life** | *2020-09-13* | [`python`] (this)      | `python35` |
| 3.6     | **End of life** | *2021-12-23* | [`python`] (this)      | `python36` |
| 3.7     | Security        | 2023-06-27   | [`python`] (this)      | `python37` |
| 3.8     | Security        | 2024-10      | [`python`] (this)      | `python38` |
| 3.9     | Bugfix          | 2025-10      | [`python`] (this)      | `python39` |
| 3.10    | Bugfix          | 2026-10      | [`extra`] (Arch Linux) | `python`   |

[#13]: https://github.com/FFY00/arch-python-repo/issues/13
[`extra`]: https://www.archlinux.org/packages/?repo=Extra
[`python`]: https://github.com/FFY00/arch-python-repo
