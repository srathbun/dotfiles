# base-files version 3.9-3

# To pick up the latest recommended .inputrc content,
# look in /etc/defaults/etc/skel/.inputrc

# Modifying /etc/skel/.inputrc directly will prevent
# setup from updating it.

# The copy in your home directory (~/.inputrc) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# the following line is actually
# equivalent to "\C-?": delete-char
"\e[3~": delete-char

# VT
"\e[1~": beginning-of-line
"\e[4~": end-of-line

# kvt
"\e[H": beginning-of-line
"\e[F": end-of-line

# rxvt and konsole (i.e. the KDE-app...)
"\e[7~": beginning-of-line
"\e[8~": end-of-line

# VT220
"\eOH": beginning-of-line
"\eOF": end-of-line


# Ignore case while completing
set completion-ignore-case on
# Allow 8-bit input/output
set meta-flag on
set convert-meta off
set input-meta on
set output-meta on
$if Bash
  # Don't ring bell on completion
  #set bell-style none

  # or, don't beep at me - show me
  #set bell-style visible

  # Filename completion/expansion
  set completion-ignore-case on
  set show-all-if-ambiguous on

  # Expand homedir name
  set expand-tilde on

  # Append "/" to all dirnames
  set mark-directories on
  set mark-symlinked-directories on

  # Match all files
  set match-hidden-files on

  # 'Magic Space'
  # Insert a space character then performs
  # a history expansion in the line
  Space: magic-space
$endif

