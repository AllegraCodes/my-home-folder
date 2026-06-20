# fish
Customize [fish](https://fishshell.com), the friendly interactive shell

Configuring fish provides:
* custom prompts
* terminal launch commands

## Instructions
1. Set variables for the prompt
```
set -U fish_prompt_pwd_dir_length 3
set -U fish_transient_prompt 1
```
2. Copy the files in the functions folder into `~/.config/fish/functions/`