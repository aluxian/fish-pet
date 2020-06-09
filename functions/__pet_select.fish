function __pet_select --description 'Search pet (the snippet manager) for a query and replace the command line with the result'
    set -l query (commandline)
    pet search --query "$query" $argv | read cmd
    and commandline -- $cmd
end
