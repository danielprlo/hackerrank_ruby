#https://www.hackerrank.com/challenges/bon-appetit/problem?isFullScreen=true
require 'json'
require 'stringio'

#
# Complete the 'bonAppetit' function below.
#
# The function accepts following parameters:
#  1. INTEGER_ARRAY bill
#  2. INTEGER k
#  3. INTEGER b
#

def bonAppetit(bill, k, b)
    bill.delete_at(k)
    count = 0
    bill.each do |item|
        count += item
    end

    count = count/2
    
    if count == b 
        puts "Bon Appetit"
    else
        puts b - count
    end
end

bonAppetit([3, 10, 2, 9], 1, 12)