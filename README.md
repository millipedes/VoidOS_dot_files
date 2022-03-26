# :floppy_disk: Installation
:exclamation: Please note, this isnstallation will write over `~/.config/`:
1) `i3`
2) `kitty`
3) `nvim`
4) `rofi`
and it will write over `~/.bashrc` and `~/.xinitrc`. If you wish to back these
up, do it before installing this package!

Additionally note, the packages that will be installed are in `packages.txt`.
This is bi-implicational though, so for your personal installation, please edit
`packages.txt` to reflect the names of the packages you want installed. Note
that if you start removing packages from this list, some things about the OS
will not work as advertised.

When you have backed up your dot files and edited packages.txt to fit your
needs, installation is completed using:
```
sudo install.sh
```
Again, don't just go running random scripts online, I would recommend you
investigate the script before running it and determine if you indeed wish to run
it (I will say that on a fresh install of base void linux, it is unlikely for
this script to fail or cause any problems).

# :sunny: Explanation of Dot Files
I will attempt to give a good idea about what these dot files do here. I do not
claim to have the perfect method of system management, but I have customized
these settings for a long time and I notice that I perform best with them.

Here is an image of a fresh install on a Lenovo Thinkpad T520:
![testimage](./Pictures/test_image.png)

These files set up the working environment that I use for my daily work
activites. The following are some system commends (mod is windows key in my
config):

| Command      |           Usage          |
|--------------|--------------------------|
|`mod+z`       | Switch to workspace 1    |
|`mod+x`       | Switch to workspace 2    |
|`mod+c`       | Switch to workspace 3    |
|`mod+v`       | Switch to workspace 4    |
|`mod+b`       | Switch to workspace 5    |
|`mod+n`       | Switch to workspace 6    |
|`mod+q`       | Quit Current Window      |
|`mod+Shift+e` | Shutdown System          |
|`mod+Enter`   | Start New Kitty Terminal |

This makes switching workspaces fast once you get used to it.

Note that kitty will complain because of the bashrc. I have a custom terminal
program that writes custom art and quotes to the terminal. If you would like you
can go to my terminal rice repository and make the binary to run it. Otherwise,
just remove those lines from the bashrc to get rid of the errors (an easy patch
is to replace the last three lines of the bashrc with just `neofetch` to display
system info on startup of a terminal).
