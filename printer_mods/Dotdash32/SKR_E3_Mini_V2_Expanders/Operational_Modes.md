# Operation Modes

A more detailed description of all the jumpers and options when running the Thermistor and Fan Expanders.

## Fan Expander V1

The first run of Fan Expanders (V1.0.1)

### Voltage Input - Dynamic

5V can be supplied through the EXP_IN header, 5V header, or screw terminals.  

* If EXP_IN is used, a separate 5V in supply should not be connected to any other connector.

* If EXP1 main board connector is used (5V connected through ribbon cable), but external 5V supply is desired, disconnect JP8, 5V_EXP_CONN.  This will isolate the external 5V supply from the main board 5V supply.

* If the screw terminals are used, JP13 (5V_TERM) should be connected.  This is left disconnected by default to avoid back flowing 5V into the main board.

24V (or another secondary voltage) can be supplied through the Fan0 In connector, or the screw terminals.

* If Fan0 In is used, the low side drive (negative line) will be passed through to Fan0 out, allowing the voltage of this fan to be changed.

* If the screw terminals are used, JP14 (24V_TERM) should be connected.  Fan0 In should not supply power in this case.

* If Fan0 In low side drive (main board MOSFET) and screw terminal input are used, Fan0 In voltage supply can be disconnected with JP11 (Fan0_PWR).  

* If screw terminal input is used, and nothing is connected to Fan0 In, JP12 (FAN0_CTRL) can be connected to turn Fan0 Out into a voltage selectable Always On fan.

### Fuses

ATM Fuses, or mini-automotive blade style fuses, are used for circuit protection.  Their primary purpose is to protect the board connectors from an overcurrent event that leads to fire.  JST-XH connectors, and most other components on the board, are rated for 3 amps.  Thus, when using Fan0 In (24V) or EXP1 (5V), it is recommended to install 3A fuses, and not connect more than 3A load per voltage level.  When using screw terminals, these current levels can be exceeded, but be careful.  While a 10A fuse is included in the BOM, just 7A will cause the traces to heat up around 80C above ambient.  This board was NOT designed for sustained high loads.

### LED Control

All onboard LEDs can be disabled by disconnecting JP9 (LED_EN).  

### Fan7 Control

Because EXP1 and EXP2 have slightly different pinouts, Fan7 can be driven from two different pin locations depending on which type of EXP header it is connected to.  JP7 (FAN_SEL) switches this.  For EXP1 connectors (SKR E3 style in general), pads 1 and 2 (square and center) should be connected.  For EXP2 connectors, pads 2 and 3 (center and outer circular) should be connected.

## Fan Expander Lite V1

First run of Fan Expander Lites (V1.0.4).  See Errata for details on errors.

### Voltage Input - Static

5V can only be supplied through EXP In header, and 24V (or other printer bus voltage) only through Fan1 In.  While less flexible than the Fan Expander Beefy Boi, it is more tailored to a simple V0 case, and with fewer variables to worry about.

### PTC Fuses

Positive Thermal Coefficient (PTC) resettable fuses are used for their simplicity.  These fuses are to protect against overcurrent in connectors, leading to fire.  While not as fast to break the circuit as traditional blade-style fuses, an overcurrent event will reset itself without need for a component replacement.

### LED Enable

All onboard LEDs can be disabled by disconnecting JP5 (LED_EN).

### IO Passthrough

Since only 3 EXP In lines are used for Fan control, the other 4 are broken out to a 4x2 pin header.  Each line has an accompanying ground pin.

## Thermistor Expander V1

First run of Thermistor Expander (V1.0.2).

### TH4 Connection

While the SPI pinout changed entirely between SKR E3 V2 and V3, the location of the 3rd analog capable pin moves.  Thus, JP1 (V2-3_SEL) can be used to select between pins for different main board versions.  For the V2, pads 3 and 2 (center and non-arrowed) should be connected.  For the V3, pads 1 and 2 (center and arrow indicated) should be connected.  There are also silkscreen labels on the board.

### Low Pass Filter Capacitors

0805 10uF capacitors are included across the thermistor inputs of each line.  These help reduce high frequency noise in the temperature measurement.

While not always required, they can help.  On initial tests with a thermistor into the SPI header, noise was a significant issue.  However, when using the PCB, the noise was much reduced.  In addition, others have used the SPI header without capacitors for extended periods.  However, these LPF capacitors are good practice, and found on most main board sensors.  So while they can be excluded, they will usually help.
