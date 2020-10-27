# Fish Shell Config

## Why Fish?
* Autocomplete and suggestions
* Syntax highlighting and beautiful colors 

### Installing
```
sudo apt install fish
```

### Setting $USER default shell
```
chsh -s /usr/bin/fish $USER
```

### config.fish directory
```
/home/$USER/.config/fish/config.fish
```

### Symbolic link repo to fish config directory
```
ln -s /home/$USER/development/m5cott/myConfigs/fish/config.fish \
/home/$USER/.config/fish/
```