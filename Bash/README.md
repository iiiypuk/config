## WakaTime
```bash
sudo pip3 install wakatime
```

```bash
git clone https://github.com/gjsheep/bash-wakatime.git
```

Include the `bash-wakatime.sh` file in your `~/.bashrc` file.

```bash
source $HOME/.config/bash-wakatime/bash-wakatime.sh
```

Make sure your [API Key](https://wakatime.com/settings/api-key) is in your `~/.wakatime.cfg` file.

**Note:**

Need WakaTime install [in system](https://github.com/wakatime/vscode-wakatime/issues/146#issuecomment-895506716) by sudo.

Installing to `$HOME/.local/bin` [not working](https://github.com/wakatime/vscode-wakatime/issues/146).

## StarShip
```bash
pacman -S starship
```

```bash
# ~/.bashrc

eval "$(starship init bash)"
```
