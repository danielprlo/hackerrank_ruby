#https://www.hackerrank.com/challenges/the-hurdle-race/problem?isFullScreen=true

require 'json'
require 'stringio'

#
# Complete the 'hurdleRace' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER k
#  2. INTEGER_ARRAY height
#

def hurdleRace(k, height)
    potionsNeeded = 0
    height.each do |hurdle|
        attempt = hurdle - k
        if attempt >= 1
            potionsNeeded += attempt
            k += attempt
        end
    end
    return potionsNeeded
end

hurdleRace(47, [52,99,93,84,50,64,61,87,89,97,64,69,61,90,82,53,50,63,82,87,76,78,75,55,80,68,75,83,69,81,95,89,60,59,90,100,90,64,53,60,88,93,62,50,75,77,60,93,55,79,52,47,65,74,62,60,96,49,73,92,79,54,100,81,63,58,75,80,89,94,52,85,57,72,97,81,97,66,84,77,83,94,85,68,99,54,64,83,67,84,81,65,59,89,68,91,60,79,74,57])
hurdleRace(7, [2,5,4,5,2])