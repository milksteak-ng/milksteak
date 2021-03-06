## The Milksteak Package Manager

Milksteak is a simple package manager written in the Bash command language for Mac OS X. It should technically be able to run on any UNIX-like platform that has the Bash shell installed as well with some minor modifications. It is based on the [Bash Package Manager](https://github.com/ngauthier/bpm) (bpm) but with certain portions rewritten and new functionalities added.

### Dependencies

Milksteak requires [Homebrew](https://github.com/Homebrew) and assumes that you're using the [GNU command line tools](https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/) by default as it has not yet been tested without them and wget is an absolute requirement.

### Installing Milksteak

    /usr/bin/env bash <(curl -s https://raw.githubusercontent.com/milksteak-ng/milksteak/master/install)

### Usage:

Install a package from the milksteak repo:

	steak install <package>

Uninstall the selected package from the system:

	steak remove <package>

Get information on a specific package:

	steak info <package>

List all currently installed packages:

	steak installed

Update the milksteak package manager to its latest version:

	steak update

List all available commands:

	steak commands

View usage info:

	steak help

Or simply:

	man milksteak

### Uninstalling Milksteak

Milksteak does not yet have the functionality to automatically unlink the symlinks generated by installing packages, though that is a planned feature for future updates. It is recommended that you manually uninstall any packages that were installed via milksteak before uninstalling milksteak itself to get rid of symlinks that would otherwise become broken. After that you can simply execute the following command to get rid of milksteak:

	steak nuke

#### Future Plans

* Improve the 'nuke' command to unlink all symlinks.
* Improve the 'install' command for installing GUI applications.
* Add functionality to search for available packages in the milksteak repo.

#### Notes

This project is maintained mostly for fun, and for installing some cool smaller projects found on GitHub as well as some more obscure ports that are not available via Homebrew or other similar package managers for Mac OS X.
