#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'designerPdfViewer' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY h
#  2. STRING word
#

def designerPdfViewer(h, word)
    biggestHeight = 0
    word.split('').each do |char|
        # Getting the ascii code
        charHeight = h[char.ord - 97]
        biggestHeight = (charHeight > biggestHeight) ? charHeight : biggestHeight
    end
    return biggestHeight * word.size
end


print(designerPdfViewer([1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5], 'abc'))