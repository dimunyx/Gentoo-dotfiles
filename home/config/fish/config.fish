if status is-interactive
	set -U fish_greeting ""
	starship init fish | source
	alias cpufetch 'cpufetch --color 108,112,134:108,112,134:108,112,134:108,112,134:108,112,134'
	alias cmatrix 'cmatrix -C black'
	set -x LS_COLORS "di=1;38;2;165;173;203:fi=0:ln=1;38;2;165;173;203"
end

# Opencode
fish_add_path /home/dimunyx/.opencode/bin
fish_add_path /home/dimunyx/.opencode/bin
