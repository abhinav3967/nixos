{ config, ... }:
{
  services.printing.enable = true;		#Enabling printing
  sound.enable = true;				#Enabling sound
  hardware.pulseaudio.enable = true;		#Enabling pulseaudio
  boot.extraModprobeConfig = ''
  options snd slots=sof-hda-dsp
  '';
}
