function pet_save --description 'Save your last command as a snippet in pet (the snippet manager)'
    history -z | fzf --read0 --print0 | read -lz result
    and commandline -- "pet new -- $result"
end
