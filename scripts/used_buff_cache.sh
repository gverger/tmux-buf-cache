#!/usr/bin/env bash

used_buf_cache ()
{
    cache=$(free -h | grep Mem | awk '{ print $6 }')
    printf "$cache"
}

main ()
{
    used_buf_cache
}

main
