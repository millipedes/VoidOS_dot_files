# :no_entry_sign: Red Void
![testimage](./Pictures/test_image.png)
The above is a screenshot of these files applied to a Lenovo T520 Laptop.  I
have been writing a number of these files for a while and wanted to make a
reasonable way to deploy and share them.

# :floppy_disk: Installation
:exclamation: Please note, this isnstallation will write over:
1. `~/.config/i3`
2. `~/.config/kitty`
3. `~/.config/nvim`
4. `~/.config/rofi`
5. `~/.bashrc`
6. `~/.xinitrc`

If you wish to back these up, do it before running the install script!

The installation script installs all programs specified in packages.txt using
the `xbps-install` command. In order to best fit your needs, you can edit this
file to reflect what packages you want (one common thing that I do not have is
any graphics drivers, please see the
[void docs](https://docs.voidlinux.org/config/graphical-session/graphics-drivers/index.html)
to see if you need any).

<em>When you have backed up your files</em> and edited packages.txt to fit your
needs, installation is completed using:

```
sudo install.sh
```

I will say that on a fresh install of base void linux, it is unlikely for
this script to fail or cause any problems (at least on all my machines).

# :sunny: Explanation of Dot Files

## :scroll: Summary
The following are some of the general aspects of the system that this install
will result in:
- Window Manager: i3
- NetworkInterface: wpa_gui
- Bar: i3blocks
- Default Editor: Highly Customized Neovim (best editor)
- Terminal Emulator: kitty

## :memo: Non-Standard Aspects of Dot Files
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
|`mod+Enter`   | Start New Kitty Terminal |
|`mod+w`       | Start Firefox            |

This makes switching workspaces fast once you get used to it.

Additionally, here are some bash scripts that I wrote that I use (the source for
these are in the bashrc and in some of the files under `config/`):
- Terminal Script Function `cdc` - This function changes directory then clears
  the console
- Terminal Script Function `cclear` - This function runs two clear commands. I
  wrote this when I used a different terminal emulator that would clear the
  console by focusing immediately on the new line (i.e. if you scroll up it
  would still show you what you cleared) and this bothered me so I wrote this.
- Terminal Script Function `c_project` - This function sets up a very bare bones
  c project, see the source code.
- Terminal Script Function `c_object` - Yes, technically wrong verbiage. This
  script sets up a <em>.c</em> file and a <em>.h</em> file with the expected
  base text inserted. See source code.
- Terminal Script Function `simple_latex` - Makes a basic latex project. See
  source code.

# :sparkles: Some Credits
- Under the directory `i3/scripts` There is an array of scripts that I borrowed
  from the EndevourOS project. The config files here currently use the CPU one.
- The background picture is thanks to Matthew Henry, and
[this website](https://unsplash.com/s/photos/natural)

To my knowledge these are the credits I should make for this package, if I
accidentally borrowed a file from anyone and did not accredit properly here,
please let me know and I will give proper credit.

# Other Notes
Note that kitty will complain because of the bashrc. I have a custom terminal
program that writes custom art and quotes to the terminal. If you would like you
can go to my terminal rice repository and make the binary to run it. Otherwise,
just remove those lines from the bashrc to get rid of the errors (an easy patch
is to replace the last three lines of the bashrc with just `neofetch` to display
system info on startup of a terminal).
