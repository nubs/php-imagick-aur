FROM base/devel:minimal

RUN pacman --sync --refresh --noconfirm --noprogressbar --quiet
RUN pacman --sync --noconfirm --noprogressbar --quiet php imagemagick

VOLUME ["/package"]
WORKDIR /package

ENTRYPOINT ["makepkg"]
CMD ["--asroot", "--force"]
