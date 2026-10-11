FROM quay.io/fedora/fedora-toolbox:45

COPY gmanka.repo /etc/yum.repos.d/gmanka.repo
RUN --mount=type=cache,target=/var/cache \
    dnf -y install minetest
COPY bot.conf /usr/etc/luanti/bot.conf
COPY clientmods/ /var/lib/luanti-bot/clientmods/
ENV LUANTI_USER_PATH=/var/lib/luanti-bot
ENV ALSOFT_DRIVERS=null
