#!/usr/bin/env bash

free -h | grep Mem | awk '{ print $6 }'
