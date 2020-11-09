{ config, ... }:
{
  users.user.abhinav = {
	isNormalUser = true;
	home = "/home/abhinav";
	description = "My Account"
	extraGroups = [ "wheel" "networkmanager" "kvm" "optical" "storage" "video" "audio"];
    };
}
