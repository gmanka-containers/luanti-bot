FROM quay.io/fedora/fedora-toolbox:44

RUN --mount=type=cache,target=/var/cache \
    dnf -y install minetest
COPY bot.conf /usr/etc/luanti/bot.conf
ENV ALSOFT_DRIVERS=null
