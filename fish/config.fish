function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here

    # No greeting
    set fish_greeting
    fastfetch
    # Use starship
  # starship init fish | source
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias pamcan pacman
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias sudo "doas"
    
end

# opencode
fish_add_path /home/idgaf/.opencode/bin


# Added by Antigravity CLI installer
set -gx PATH "/home/idgaf/.local/bin" $PATH

fish_add_path /home/idgaf/.spicetify
