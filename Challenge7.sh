#!bin/bash
#System Info Lookup
echo System Info Lookup 
    echo %%%%%%%%%% RAM INFO %%%%%%%%%%
    lshw -class memory | grep -E 'description:|size'
    echo %%%%%%%%%% CPU INFO %%%%%%%%%%
    lshw -class cpu | grep -E 'product:|vendor'
    echo %%%%%%%%%% DISPLAY ADAPTER %%%%%%%%%%
    lshw -class display | grep -E 'description:|product|vendor|width'
    echo %%%%%%%%%% NETWORK ADAPTER %%%%%%%%%%
    lshw -class network | grep -E 'description:|product|vendor|version|size|capacity|serial'

  






