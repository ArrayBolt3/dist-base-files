# base files for distributions #

Grub config for more organized boot menu.
"Normal" boot options are on top.
"Advanced" boot options (for older kernel versions) have been moved to the
bottom.

Creates user `user` with empty password (passwordless) (not in Qubes).
That is if user `user` is not existing yet.
And if it does create user `user` it also locks the root account.
Therefore root account locking effectively only happens in new
builds not having user `user` already created.

Creates system groups:
* console
* ssh

Ships a systemd unit file dist-skel-first-boot.service
which runs `/usr/libexec/helper-scripts/first-boot-skel`
(part of helper-scripts) package.

Simplifies sudo default lecture to only showing the default password once.

Creates version file `/var/lib/dist-base-files/build_version`.

Default shell: Sets default shell for user `user` to `zsh`.
(Unless file `/etc/no-shell-change` exists.)
`debian/dist-base-files.postinst`

Provides common files for derivative GRUB themes.

This package gets installed by default in both, Kicksecure and Whonix.

## How to install `dist-base-files` using apt-get ##

1\. Download the APT Signing Key.

```
wget https://www.kicksecure.com/keys/derivative.asc
```

Users can [check the Signing Key](https://www.kicksecure.com/wiki/Signing_Key) for better security.

2\. Add the APT Signing Key.

```
sudo cp ~/derivative.asc /usr/share/keyrings/derivative.asc
```

3\. Add the derivative repository.

```
echo "deb [signed-by=/usr/share/keyrings/derivative.asc] https://deb.kicksecure.com bookworm main contrib non-free" | sudo tee /etc/apt/sources.list.d/derivative.list
```

4\. Update your package lists.

```
sudo apt-get update
```

5\. Install `dist-base-files`.

```
sudo apt-get install dist-base-files
```

## How to Build deb Package from Source Code ##

Can be build using standard Debian package build tools such as:

```
dpkg-buildpackage -b
```

See instructions.

NOTE: Replace `generic-package` with the actual name of this package `dist-base-files`.

* **A)** [easy](https://www.kicksecure.com/wiki/Dev/Build_Documentation/generic-package/easy), _OR_
* **B)** [including verifying software signatures](https://www.kicksecure.com/wiki/Dev/Build_Documentation/generic-package)

## Contact ##

* [Free Forum Support](https://forums.kicksecure.com)
* [Premium Support](https://www.kicksecure.com/wiki/Premium_Support)

## Donate ##

`dist-base-files` requires [donations](https://www.kicksecure.com/wiki/Donate) to stay alive!
