#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'sockMerchant' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. INTEGER_ARRAY ar
#

def sockMerchant(n, ar)
    pairs = Hash.new(nil)
    foundPairsOfSocks = 0
    ar.each do |sock|
        if pairs[sock] == nil
            pairs[sock] = 1
        else
            foundPairsOfSocks += 1
            pairs.delete(sock)
        end
    end
    return foundPairsOfSocks
end

sockMerchant(7, [1, 2, 1, 2, 1, 3, 2])