#!/usr/bin/env bash

high_usage ()
{
    cache=$(free --giga | grep Mem | awk '{ print $6 }')
    if [[ $cache -ge 5 ]]; then
        printf "#[bg=black,fg=red]"
    else
        printf "#[bg=black,fg=green]"
    fi
}

used_buf_cache ()
{
    cache=$(free -h | grep Mem | awk '{ print $6 }')
    printf "$cache"
}

main ()
{
    high_usage
    used_buf_cache
}

main
