{ pkgs, misc, ... }: {
	# FEEL FREE TO EDIT: This file is NOT managed by fleek.
	imports = [
		../_specialized/_gaming
    ../_specialized/_graphical
		../_specialized/_graphical/_wm/_kde.nix
    ../_specialized/_sound
    ../_specialized/_dev
    ../_common
		../_dotfiles

		./_bugfixes/_middle-mouse-scroll.nix
		# machine packages
    ./_packages.nix
	];
}
