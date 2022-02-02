# Errata

Errors from production/design found during testing.

## V1.0

## Fan Expander Lite

### LED_Drive missing trace

On FEL-V1.0.3, one trace is missing for LED_Drive.  The upper (Fan2 and 4) LEDs are not connected to 5V (LED_Drive for Fan1 Out and Fan3).  

Remedies:

* Disabled LEDs by disconnecting LED_EN (JP5)

* Jump 5V (fused) to top pad of R2 (560R).  This can be done by pending the fuse lead over and carefully bridging the connection.  This restores full LED capability, but two places must be disconnected to disable LEDs again.
