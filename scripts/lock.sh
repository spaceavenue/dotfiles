#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffff22'
DEFAULT='#ff00ffcc'
TEXT='#f47aedff'
WRONG='#ee0000ff'
VERIFYING='#bb00bbbb'

i3lock \
--image=/home/sanyaxo/pictures/celeste_wallpaper1.png \
--color=0b011d               \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=#00000000        \
--ring-color=#f47aedff        \
--line-color=#00000000          \
--separator-color=#f47aedff   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--bshl-color=#0b011d          \
\
--screen 1                   \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %M %Y"       \
--radius 150                 \
--ring-width 10              \
