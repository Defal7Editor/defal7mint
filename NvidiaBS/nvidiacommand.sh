#!/bin/sh

CABLE=HDMI-0
RES=1920x1080
REF=59.93

echo "Type your cable type something??"
echo Example: HDMI-0
read -p "" CABLE

echo Type your resolution:
echo Example: 1920x1080
read -p "" RES

echo Command:
printf 'nvidia-settings --assign CurrentMetaMode="%s:%s_%s+0+0 { ForceFullCompositionPipeline = On }"\n' $CABLE $RES $REF
