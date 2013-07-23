# Assignment 1

Write a `Car` class.

Each car has two attributes:

* `distance` (in kilometers)
* `gas` (in liters)

The car starts with 0 kilometers of distance and 10 liters of gas in the tank.

Each car has two methods:

* `add_gas`
* `drive`

The `add_gas` method adds up to 10 liters of gas, never to exceed 15 liters
(maximum capacity of the gas tank).

The `drive` method takes 1 argument: the distance driven, in kilometers. Every
13 kilometers driven uses 1 liter of gas.

If gas drops below 1.5 liters, output: "Warning: low on gas." If gas drops to
0, output: "You ran out of gas" and exit the program.
