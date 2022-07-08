#https://www.hackerrank.com/challenges/cats-and-a-mouse/problem?isFullScreen=true

require 'json'
require 'stringio'

# Complete the catAndMouse function below.
def catAndMouse(x, y, z)
    yValue = (z - y).abs()
    xValue = (z - x).abs
    
    if xValue == yValue
        return "Mouse C"
    elsif xValue < yValue
        return "Cat A"
    else
        return "Cat B"
    end            
end