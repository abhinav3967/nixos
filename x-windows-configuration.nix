{ config, ... }:
{
  services.xserver = {
	enable = true;					#Enabling xserver
	displayManager.lightdm.enable = true;		#Enabling lightdm
	windowManager.qtile.enable = true;		#Enabling qtile
	layout = "us";					#Setting layout
	displayManager.defaultSession = "none+qtile";	#Setting default login optin
	videoDrivers = [ "modsetting" ];		#Setting video drivers
	useGlamor = true;				#Enabling Glamor
	libinput.enable = true;				#Enabling touch pad
	libinput.tapping = true;			#Enabling tapping
  };
  hardware.opengl.driSupport32Bit = true;		#Enable opengl 32 bit support
}
