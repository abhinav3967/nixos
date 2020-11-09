{ config, ... }:
{
  boot.loader.systemd-boot.enable = true;		#Enabling systemd boot
  boot.loader.efi.canTouchEfiVariables = true;
}
