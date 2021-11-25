# SKR E3 Mini V2.0 Expanders

A set of simple expander PCBs to give more thermistor and MOSFET fan outputs.

## Fan Expander

Uses the BL Touch port to add 2 fan outputs that natively run at 5v (V0 hotend fan) with optional switch to +12/24v.

## Thermistor Expander

Uses SPI1 interface to add up to 3 thermistors.

Be aware, they use 10k pull ups (next to SD-card on SKR board), which are different than the typical 4.7k pull ups.  This changes the thermistor sensitivity, so be aware they might not be as sensitive at printing temperatures.  This is based on Timmit's Umbilical mod, and the thermistor ports are designed for chamber and other low temperature and non-sensitive applications.
