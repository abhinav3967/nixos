{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	wget
	git
	curl
	dunst
	fzf
	autoconf
	fd
	automake
	clang
	youtube-dl
	docker
	obs-studio
	gcc
	steam-run
	jdk
	neovim
	python38Packages.xlib
	ripgrep
	appimage-run
	virtualbox
	mono
	binutils-unwrapped
	spotify
	cgminer
	roboto
	fish
	rustup
	minecraft
	kitty
	pcmanfm
	lutris
	inkscape
	krita
	blender
	gimp
	celluloid
	autokey
	olive-editor
	audacity
	vbam
	exa
	htop
	nitrogen
	bat
	python
	flameshot
	unzip
	tdesktop
	premake5
	discord
	picom
	steam
	rofi
	(emacsWithPackages (epkgs: [ epkgs.emacsql-sqlite ]))
    ];
  nixpkgs.overlays = [
                          (self: super: {
                              qtile = super.qtile.overrideAttrs(oldAttrs: {
                              pythonPath = oldAttrs.pythonPath ++ (with self.python37Packages; [
                              keyring
                              xcffib
                              #cairocffi-xcffib
                              setuptools
                              setuptools_scm
                              dateutil
                              dbus-python
                              mpd2
                              psutil
                              pyxdg
                              pygobject3
                            ]);
                          });
                        })
			(self: super: {
			      discord = super.discord.overrideAttrs (_: {
			      src = builtins.fetchTarball https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.tar.gz;
			      });
			})];
}
