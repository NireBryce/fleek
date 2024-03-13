{ lib, config, pkgs, misc, ... }: 
{
	# FEEL FREE TO EDIT: This file is NOT managed by fleek.
	imports = [
		../_common
    ../_specialized/_dev
    ../_specialized/_graphical
		../_specialized/_wm/_kde.nix
    ../_specialized/_sound

		# machine packages
    ./_packages.nix
	];
}
