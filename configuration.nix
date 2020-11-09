#File: configuration.nix
#Desc: Configuration file for the nix os
#Author: Abhinav Kuruvila Jospeh
#Email: abhinav.kuruvila.joseph@gmail.com
#Date Created: 9-11-2020
#Last Modified: 9-11-2020

{ config, pkgs, ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix
      ./bootloader-configuration.nix
      ./net-configuration.nix
      ./time-font-configuration.nix
      ./x-windows-configuration.nix
      ./basic-configuration.nix
      ./packages.nix
    ];

  boot.kernelPackages = pkgs.linuxPackages_5_9;

  system.stateVersion = "20.09";

}

