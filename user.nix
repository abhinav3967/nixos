{ config, pkgs, ... }:
{
  users.user.abhinav = {
	isNormalUser = true;
	home = "/home/abhinav";
	description = "My Account"
	extraGroups = [ "wheel" "networkmanager" "kvm" "video" "audio"];
    };
  users.defaultUserShell = pkgs.fish;	#Setting Default Shell
}
