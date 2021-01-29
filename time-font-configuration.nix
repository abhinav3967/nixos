{ config, ... }:
{
  time.timeZone = "Asia/Kolkata";		#Setting TimeZone
  i18n.defaultLocale = "en_US.UTF-8";		#Setting locale
  console.font = "Lat2-Terminus16";		#Setting the default font
  console.useXkbConfig = true;			#Setting console to use xkb Config
}
