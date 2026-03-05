if status is-interactive
# Commands to run in interactive sessions can go here
set -g fish_greeting ""

alias vi="nvim"
alias vim="nvim"

alias ls="eza --icons=always --group-directories-first"
alias ll="eza -al --icons=always --group-directories-first"
alias tree="eza -tree --icons=always"

alias cat="bat"

zoxide init fish | source
abbr -a fs sessionizer

function tap
  set -l current_dir (pwd)
  if not grep -qx "$current_dir" ~/.tmux-projects
    echo "$current_dir" >> ~/.tmux-projects
    echo "Added $current_dir to sessionizer."
  else
    echo "directory already tracked"
  end
end
function fish_user_key_bindings
  bind \cf 'sessionizer; commandline -f repaint'
end
function vpn-on
sudo openconnect vpn.lboro.ac.uk \
  --user=gc0961 \
  --background \
  --passwd-on-stdin < ~/.lboro-vpn-creds
echo "VPN starting"
end
function vpn-off
  sudo pkill openconnect
  echo "VPN killed"
end
alias sciserver="ssh gc0961@sci-project.lboro.ac.uk"
end
