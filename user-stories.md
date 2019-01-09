As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

| Objects         | Messages |
| -------------   | ------------- |
|Person           |               |
|Bike             | bike_working  |
|Docking Station  | release_bike  |


As a person,
So that I can use a good bike,
I'd like to see if a bike is working


+---------------+
| Person        |
|               |
+-------+-------+
        |
        |
 +------+-------+
 |              |
 |     Bike     +-----------+ !bike-working
 +------+-------+
        |
        | bike_working
        |
  +-----+-------+
  |    Docking  |
  |    Station  |
  +------+------+
         |
         |  Release
         +
   +------+------+
   |    Bike     |
   +------+------+

