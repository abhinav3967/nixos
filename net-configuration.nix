{ config, ... }:
{
  networking.hostName = "nix-avita";		#Setting hostname
  networking.useDHCP = false;			#The global useDHCP flag is depricated so
						#setting it to false here
  networking.interfaces.wlp1s0.useDHCP = true;	#This replicates the default behaviour
  networking.networkmanager.enable = true;	#Enabling network manager
}
