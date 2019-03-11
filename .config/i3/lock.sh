#!/bin/sh

B='#cccccccc'  # blank
C='#ffffff22'  # clear ish
D='#ffffffff'  # default
T='#000000ff'  # text
W='#880000bb'  # wrong
V='#ffffffff'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 2            \
--blur 5              \
--indicator           \
--keylayout 2         \
--veriftext="CHECKING" \
--wrongtext="ERROR" \
--modsize=10
