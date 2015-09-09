# Git-Town Packaging and Release Process

Instructions on how to update all the necessary packages once a new release is out

## Linux
The current linux (all distros) maintainer is [allonsy](https://github.com/allonsy). If an update occurs, please bug him
### Arch Linux
The package will need to be flagged out of date [here](https://aur.archlinux.org/packages/git-town/)
This will tell [allonsy](https://github.com/allonsy) to update the package (most likely minimal intervention necessary). There is a button on the right hand side menu to flag the package.


### Debian Based Distributions
The package will need to be repackaged into a deb tarball.
There are two options: rebuild it from your own debian based machine or build it on the included docker image (recommended)

For Either process you will need to update the version number for the package located in the following configuration file:
 * `package/debian/debian/changelog`

Process for your own machine:
1. Ensure that you have the following packages installed:
  * `build-essential`
  * `devscripts`
  * `debhelper`
2. Clone the repo (preferrably into a temporary directory to not mess with any existing branches)
3. cd into the `package/debian` directory
4. run the `./debian_build.sh` script
5. The deb file will be in the `package` directory
6. upload the deb file to the hosted repo
7. Update the hash located in `documentation/installation.md`

Process for the docker image:
1. cd into `package/debian`
2. run 'docker build .'
3. grab some coffee as the image builds
4. once the image is built, run `docker run -it <iamge hash/name> /bin/bash`
 * it is recommended to also mount a local folder into the docker image so you will be able to transfer the built deb file onto the host or any other machine
 * if you wish to do so, add a `-v <host_folder>:<guest folder name>` before the docker image hash/name
5. cd to `/root/git-town/package/debian`
6. run the `./debian_build.sh` script
7. find the deb file in the `/root/git-town/package` directory and move it to the desired location/hosting repo
8. Update the hash located in `documentation/installation.md`


### Coming soon: RPM files for redhat/fedora based distros
