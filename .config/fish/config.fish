if status is-interactive
    # Commands to run in interactive sessions can go here
	# pokemon-colorscripts -r --no-title &
	starship init fish | source &
	thefuck --alias | source &
	~/.config/fish/tty.sh &
end


set -l teal 94e2d5
set -l flamingo f2cdcd
set -l mauve cba6f7
set -l pink f5c2e7
set -l red f38ba8
set -l peach fab387
set -l green a6e3a1
set -l yellow f9e2af
set -l blue 89b4fa
set -l gray 1f1d2e
set -l black 191724
    
# Completion Pager Colors
set -g fish_pager_color_progress $gray
set -g fish_pager_color_prefix $mauve
set -g fish_pager_color_completion $peach
set -g fish_pager_color_description $gray

# Some config
set -g fish_greeting

# Git config
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_showdirtystate yes
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_cleanstate '✔'
set -g __fish_git_prompt_char_dirtystate '✚'
set -g __fish_git_prompt_char_invalidstate '✖'
set -g __fish_git_prompt_char_stagedstate '●'
set -g __fish_git_prompt_char_stashstate '⚑'
set -g __fish_git_prompt_char_untrackedfiles '?'
set -g __fish_git_prompt_char_upstream_ahead ''
set -g __fish_git_prompt_char_upstream_behind ''
set -g __fish_git_prompt_char_upstream_diverged 'ﱟ'
set -g __fish_git_prompt_char_upstream_equal ''
set -g __fish_git_prompt_char_upstream_prefix ''''


set -g man_blink -o $teal
set -g man_bold -o $pink
set -g man_standout -b $gray
set -g man_underline -u $blue


# Directory abbreviations
abbr -a -g l 'ls'
abbr -a -g la 'ls -a'
abbr -a -g ll 'ls -l'
abbr -a -g lal 'ls -al'
abbr -a -g d 'dirs'
abbr -a -g hm 'cd $HOME'

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Exports
export VISUAL="code"
export EDITOR="$VISUAL"
export SHELL="fish"

# Term
switch "$TERM_EMULATOR"
case '*kitty*'
	export TERM='xterm-kitty'
case '*'
	export TERM='xterm-256color'
end


# User abbreviations
abbr -a -g ytmp3 'youtube-dl --extract-audio --audio-format mp3'				# Convert/Download YT videos as mp3
abbr -a -g cls 'clear'																								# Clear
abbr -a -g h 'history'																								# Show history
abbr -a -g upd 'yay -Syu --noconfirm'																								# Update everything
abbr -a -g please 'sudo'																						# Polite way to sudo
abbr -a -g fucking 'sudo'																						# Rude way to sudo
abbr -a -g sayonara 'shutdown now'																	# Epic way to shutdown
abbr -a -g stahp 'shutdown now'																		# Panik - stonk man
abbr -a -g shinei 'kill -9'																						# Kill ala DIO
abbr -a -g kv 'kill -9 (pgrep vlc)'																			# Kill zombie vlc
abbr -a -g priv 'fish --private'																				# Fish incognito mode
abbr -a -g sshon 'sudo systemctl start sshd.service'										# Start ssh service
abbr -a -g sshoff 'sudo systemctl stop sshd.service'										# Stop ssh service
abbr -a -g untar 'tar -zxvf'																					# Untar
abbr -a -g genpass 'openssl rand -base64 20'													# Generate a random, 20-charactered password
abbr -a -g sha 'shasum -a 256'																			# Test checksum
abbr -a -g cn 'ping -c 5 8.8.8.8'																			# Ping google, checking network
abbr -a -g ipe 'curl ifconfig.co'																				# Get external IP address
abbr -a -g ips 'ip link show'																					# Get network interfaces information
abbr -a -g wloff 'rfkill block wlan'																			# Block wlan, killing wifi connection
abbr -a -g wlon 'rfkill unblock wlan'																		# Unblock wlan, start wifi connection																							#
abbr -a -g cat 'bat'	

# Source plugins
# Useful plugins: archlinux bang-bang cd colorman sudope vcs
if test -d "$HOME/.local/share/omf/pkg/colorman/"
	source ~/.local/share/omf/pkg/colorman/init.fish
end

# Make su launch fish
function su
   command su --shell=/usr/bin/fish $argv
end

function wa
    set -f APPID "6HV6YJ-QGK36VKQQJ" # Get one at https://products.wolframalpha.com/api/
    echo $argv | string escape --style=url | read question_string
    set -f url "https://api.wolframalpha.com/v1/result?appid="$APPID"&i="$question_string
    curl -s $url
end

# Get terminal emulator
# set TERM_EMULATOR (ps -aux | grep (ps -p $fish_pid -o ppid=) | awk 'NR==1{print $11}')

# Neofetch
# switch "$TERM_EMULATOR"
# case '*kitty*'
#       neofetch --backend 'kitty'
# case '*tmux*' '*login*' '*sshd*' '*konsole*'
#	neofetch --backend 'ascii' --ascii_distro 'arch_small' 
# case '*'
# 	neofetch --backend 'w3m' --xoffset 34 --yoffset 34 --gap 0
# end


alias bat='bat --theme="Catppuccin-mocha"'
alias hc=herbstclient
alias code='code --ozone-platform=wayland'



# Created by `pipx` on 2022-09-11 05:02:32
set PATH $PATH /home/zeroruka/.local/bin
