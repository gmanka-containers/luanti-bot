## installation

### write account password

```bash
mkdir -p ~/.var/app/org.luanti.luanti/bot/
echo my-password > ~/.var/app/org.luanti.luanti/bot/pass
```

### clone repo

```bash
git clone https://github.com/gmanka-containers/luanti-bot ~/.config/containers/systemd/luanti-bot
```

### edit values

- edit server address in luanti-bot.container
- edit account name in bot.conf

### start service

```bash
systemctl --user daemon-reload
systemctl --user start luanti-bot.service
```
