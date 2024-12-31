function fish_greeting
  if type -q fastfetch
    fastfetch
  else
    echo 'fastfetch not installed!!'
end
