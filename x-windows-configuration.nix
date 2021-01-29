{ config, ... }:
{
  services.xserver = {
	enable = true;					#Enabling xserver
	displayManager.lightdm.enable = true;		#Enabling lightdm
	windowManager.qtile.enable = true;		#Enabling qtile
	layout = "us";					#Setting layout
	xkbVariant = "colemak";				#Setting Keyboard layout to colemak
	displayManager.defaultSession = "none+qtile";	#Setting default login optin
	videoDrivers = [ "modsetting" ];		#Setting video drivers
	useGlamor = true;				#Enabling Glamor
	libinput.enable = true;
	libinput.naturalScrolling = false;
	libinput.middleEmulation = true;
	libinput.tapping = false;
	wacom.enable = true;				#Enabling wacom support
  };
  hardware.opengl.driSupport32Bit = true;		#Enable opengl 32 bit support
}
