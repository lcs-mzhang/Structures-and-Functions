/*:
 [Previous](@previous)
 
 The following statement is required to make the playground run.
 
 
 Please do not remove.
 */
import Foundation
/*:
 ## Exercise
 
 Write a function that determines the shortest distance from a point on a Cartesian plane to a line on a Cartesian plane.
 
 You can re-use the **Point** structure and the *distance* function.
 
 You should declare a **Line** structure.
 
 Recall that the shortest distance from a point to a line is the perpendicular distance.

*/

// Begin here... once you teach the computer to do this, you will never need to do it by hand again! :)
// until period 3 when i have to do a math test

struct Point
{
    var x : Double = 0.0
    var y : Double = 0.0
}

struct Slope
{
    var rise : Double = 0.0
    var run : Double = 0.0
    var yInt : Double = 0.0
}

var point1 = Point(x: 6, y: 1.5)
var slope1 = Slope(rise: -1, run: 2, yInt: 19/2)

func Solve(between lineWithSlope: Slope, Position: Point) -> Double
{
    let m = -1*(lineWithSlope.run/lineWithSlope.rise)
    let b = (-1 * m * Position.x) + Position.y
    
    

    let otherM = lineWithSlope.rise/lineWithSlope.run
    let otherB = lineWithSlope.yInt
    

    let poiX = (otherM * Position.x + otherB - b)/m
    let poiY = otherM * poiX + otherB
    
    let distance = sqrt(pow(Position.x - poiX, 2)+pow(Position.y - poiY, 2))
    
    return distance
}


Solve(between: slope1, Position: point1)





//find perp slope
//sub in point
//find poi
//calculate line distance
