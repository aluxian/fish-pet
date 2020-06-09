bind \cp __pet_save
bind \cs __pet_select

set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
    bind --erase \cp
    bind --erase \cs
end
