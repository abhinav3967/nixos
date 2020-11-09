{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	#Cli - apps
	wget
	git
	curl
	neovim
	fish
	alacritty
	#gui - apps
	firefox
	qutebrowser
	pcmanfm
	#Art - apps
	inkscape
	krita
	gimp
	#Video - apps
	celluloid
	olive-editor
	#Audia - apps
	audacity
	#Development
	emacs
	godot
	python
	#Other - apps
	rofi
	flatpak
    ];
}
