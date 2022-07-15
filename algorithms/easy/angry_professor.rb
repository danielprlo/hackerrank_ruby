#https://www.hackerrank.com/challenges/angry-professor/problem?isFullScreen=true

require 'json'
require 'stringio'

#
# Complete the 'angryProfessor' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER k
#  2. INTEGER_ARRAY a
#

def angryProfessor(k, a)
    lateCounter = 0
    a.each do |time|
        if time <= 0
            lateCounter += 1
        end
    end
    if lateCounter >= k
        return 'NO'
    end

    return 'YES'
end

print(angryProfessor(3, [-1,-3,4,2]))