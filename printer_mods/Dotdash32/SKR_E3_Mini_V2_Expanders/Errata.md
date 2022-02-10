# Errata

Errors from production/design found during testing.

## V1.0

## Fan Expander Common

### Passthrough Fan LED Back driven

On FEL-V1.0.4 and FE-1.0.1, the 24V driven LED will illuminate from the 5V LED drive on the expander.  The indicator LED on the mainboard is illuminated whenever power is applied, but expander specific LED is only on when driving current.

Remedies:

* (TODO for V1.1) Add diode to passthrough fan to avoid this

## Fan Expander Lite

### LED_Drive missing trace

On FEL-V1.0.4, one trace is missing for LED_Drive.  The upper (Fan2 and 4) LEDs are not connected to 5V (LED_Drive for Fan1 Out and Fan3).  

Remedies:

* Disabled LEDs by disconnecting LED_EN (JP5)

* Jump 5V (fused) to top pad of R2 (560R).  This can be done by pending the fuse lead over and carefully bridging the connection.  This restores full LED capability, but two places must be disconnected to disable LEDs again.

