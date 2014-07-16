FROM nubs/arch-build

MAINTAINER Spencer Rinehart <anubis@overthemonkey.com>

RUN sudo pacman --sync --refresh --noconfirm --noprogressbar --quiet
RUN sudo pacman --sync --noconfirm --noprogressbar --quiet php imagemagick
