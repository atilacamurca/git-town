# Git Town installation

Git Town runs anywhere Git and [Bash](https://www.gnu.org/software/bash/bash.html) run.

## Mac OS X

<table>
  <tr>
    <th width="300px">
      Using <a href="http://brew.sh">Homebrew</a>
    </th>
    <th width="400px">
      Manually
    </th>
  </tr>
  <tr>
    <td colspan="2">
      <b>Install</b>
    </td>
  </tr>
  <tr>
    <td>
      <code>brew tap Originate/gittown</code><br>
      <code>brew install git-town</code>
    </td>
    <td>
      <ul>
        <li>clone the repo to your machine (into DIR)</li>
        <li>add DIR/src to your <code>$PATH</code></li>
        <li>add DIR/man to your <code>$MANPATH</code></li>
        <li>
          install <a href="http://en.wikipedia.org/wiki/Dialog_(software)">Dialog</a>
          (used by <a href="/documentation/commands/git-extract.md">git extract</a>)
        </li>
      </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <b>Update</b>
    </td>
  </tr>
  <tr>
    <td>
      <code>brew update</code><br>
      <code>brew upgrade git-town</code>
    </td>
    <td>
      <ul>
        <li>run <code>git pull</code> in DIR</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2">
      <b>Uninstall</b>
    </td>
  </tr>
  <tr>
    <td>
      <code>brew uninstall git-town</code><br>
      <code>brew untap Originate/gittown</code>
    </td>
    <td>
      <ul>
        <li>remove DIR</li>
        <li>remove DIR/src from your <code>$PATH</code></li>
        <li>remove DIR/man from your <code>$MANPATH</code></li>
      </ul>
    </td>
  </tr>
</table>

## Linux

### Arch Linux
 * git-town is available in the aur [here](https://aur.archlinux.org/packages/git-town/)

### Debian Based
 * There is a deb file hosted [here](www.iamawesome.com)
 * either double click on the deb file (Ubuntu or mint) or run `dpkg -i path_to_deb.deb` on the command line (all distros)
 * the deb file SHA1 hash is: 1234

### Redhat/Fedora based
 * rpm files are coming soon!

#### Install autocompletion

* for [Fish shell](http://fishshell.com): `git town install-fish-autocompletion`
