# [Time Lap to Average MPH - ("Indianapolis 500")](http://www.codewars.com/kata/56b89b9b33dbe53e82000df8)


### Description:

"The Indianapolis 500 is held annually at the Indianapolis Motor Speedway, a 2.5 mile oval circuit. Drivers race 200 laps, counterclockwise around the circuit, for a distance of 500 miles."

You are watching the race and you want to know the lap of a car. All you have is a stopwatch.

The only issue here is that laps are measured by the average miles per hour.

Given the duration of a lap, define a method that will return the average miles per hour for that same lap.

* Lap duration is a string.
* Lap duration may have up to 4 decimal places.
* The result should return a string with 3 decimal places and 'mph'.

##### Example:
```ruby
mph('00:01:09.77')
#Should return:
'128.995 mph'
```