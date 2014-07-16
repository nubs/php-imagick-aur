FROM base/devel:minimal

RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet
RUN pacman --sync --noconfirm --noprogressbar --quiet php imagemagick git

RUN useradd --create-home build
RUN echo -e "build\tALL=(ALL:ALL) NOPASSWD: ALL" >>/etc/sudoers

USER build
WORKDIR /home/build

RUN curl -sS https://aur.archlinux.org/packages/pk/pkgbuild-introspection-git/pkgbuild-introspection-git.tar.gz | tar -xz
RUN cd pkgbuild-introspection-git && makepkg --clean --install --noconfirm --noprogressba

VOLUME ["/package"]
WORKDIR /package

CMD ["makepkg", "--force"]
