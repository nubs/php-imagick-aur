FROM nubs/arch-build

RUN sudo pacman --sync --refresh --noconfirm --noprogressbar --quiet
RUN sudo pacman --sync --noconfirm --noprogressbar --quiet php imagemagick
