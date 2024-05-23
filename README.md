# Door Lightweight Desktop Environment (Debian Edition)

![screenshot](screenshot.png)

**This is a lightweight desktop environment that I use to my daily computing activities.**

You  may download this repository via GitHub to install the desktop environment. Just unzip the file and run to the terminal the following command:

```cd dlde/```

to move to the DLDE directory, and:

```sh install.sh```

Afterwards, answer the questions during installation. This may take a while. Be patient.

To install entirely from command line, type the following:

```git clone https://github.com/10542hsrif/dlde```

to clone from the `git` repo, then:

```cd dlde/```

to change directory of the installer, then:

```sh install.sh```

to start the installer. Answer the questions during installation. This may take a while. Be patient.

**Recommendations**

1. It is recommended for new users to go to lightdm-settings (Login Window), and tweak the autologin part of it.
2. lxappearance (Customize Look and Feel) may be opened to configure the appearance settings.
3. `./.config/polybar/launch.sh` may be run to change the bar.
4. More ricing options at the `.config/i3/config` file.
5. Either `nitrogen` or `feh` may be used as a wallpaper setter.
6. The repo folder should be at the `$HOME` directory in order to avoid any conflicts or problems.
