#https://www.hackerrank.com/challenges/utopian-tree/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

require 'json'
require 'stringio'

#
# Complete the 'utopianTree' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER n as parameter.
#

def utopianTree(n)
    height = 1
    for i in 1..n do
        height = (i%2 == 0) ? height += 1 : height*2
    end
    return height
end

print utopianTree(5)