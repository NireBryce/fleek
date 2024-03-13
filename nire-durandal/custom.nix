{ pkgs, misc, ... }: {
	# FEEL FREE TO EDIT: This file is NOT managed by fleek.
	imports = [
		# We split off configs that we might have to remove from specific machines
		# TODO: clean this up later
		../_specialized/_gaming
    ../_specialized/_graphical
		../_specialized/_wm/_kde.nix
    ../_specialized/_sound
    ../_specialized/_dev
		../_dotfiles

		# Enables middle mouse scrolling instead of paste in kde
		./_bugfixes/_middle-mouse-scroll.nix
	];
}
