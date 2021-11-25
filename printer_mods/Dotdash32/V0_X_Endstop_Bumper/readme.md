# V0 X-Endstop Bumper

## Overview

A bumper to allow access to the XY joint screw without needing to remove the X Endstop triggering screw.

A drop in replacement for the existing `[a]_X_Endstop_Bumper_x1`, it moves the adjustable microswitch triggering bolt slightly in +Y and +Z directions, increasing clearance around the XY joint bolt.
This allows the adjustable screw to be started (self tapped into the plastic part) off the machine, which aids assembly.  Also, it gives full access to adjust the XY joint if the gantry needs to be de-racked.

### X Endstop Materials

* 1x `[a]_X_Endstop_Bumper_MOD_x1.stl`
* 1x M3x16 BHCS (same as stock)
* 1x M3x16 BHCS (same as stock)
  * can be replaced with shorter screw, depending on your specific X gantry config

## Z Endstop Buffer

Also included in a subfolder is an openSCAD file to increase the apparent diameter of the Z Endstop screw.  I was having lots of difficulty getting it to reliably trigger, so I switched to a SHCS with a little jacket to make it easier to always trigger the endstop.

### Z Endstop Buffer Materials

* 1x M3x12 SHCS
* 1x `screwBiggener.stl`

## Status

Currently in testing!  
The part is pretty simple, and a near exact copy save for the moved screw hole and modified ribs, but it still needs stress testing.

If you are interested in testing/currently testing, please shoot me a message on Discord!

## Visuals

Assembly context: Mounts in the exact same place as the old part.

![in context](./images/In-sitio.png)

Main differences: new hole location, removed right side rib.  Slight bulge on the side of the part to keep a good thickness clearance around the self-tapped hole.

![just the part](./images/isolated.png)
