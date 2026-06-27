# Dotfiles

## Managing dotfiles

Bare git repo at `~/.cfg/`, work-tree `$HOME`. Use `cfg` (not `git`) for all dotfiles ops:

```bash
rtk cfg status
rtk cfg diff
rtk cfg add ~/.zshrc
rtk cfg commit -m "msg"
rtk cfg push
```

RTK passthrough handles `cfg` the same as `git`.

## Environment

| Tool | Config |
|------|--------|
| Editor: LunarVim (`lvim`) | `~/.config/lvim/` |
| Window manager: yabai + skhd | `~/.config/yabai/yabairc`, `~/.config/skhd/skhdrc` |
| Shell history: atuin | `~/.config/atuin/config.toml` |
| Prompt: starship | `~/.config/starship.toml` |
| Terminal: kitty | `~/.config/kitty/kitty.conf` |
