#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'climbingLeaderboard' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY ranked
#  2. INTEGER_ARRAY player
#

def climbingLeaderboard(ranked, player)
    positions = []
    rankedLenght = ranked.length
    playerCurrentPosition = rankedLenght
    firstRound = true
    player.each do |play|
        playerScoreFound = false
        # Remove old play from the board
        if !firstRound
            ranked.delete_at(playerCurrentPosition)
        end
        firstRound = false
        
        (playerCurrentPosition -1).downto(0) do |i|
            # Search from that position backwards in the loop
            if !playerScoreFound && play < ranked[i] 
                ranked.insert(i+1, play)
                playerCurrentPosition = i+1
                break                
            end
            if !playerScoreFound && i == 0
                playerCurrentPosition = 0
                ranked.insert(0, play)
            end
        end

        previousValue = -1
        boardScore = 0
        (playerCurrentPosition -1).downto(0) do |i|
            if ranked[i] > previousValue
                boardScore += 1
                previousValue = ranked[i]
            end
        end
        positions.append(boardScore+1)
    end
    return positions
end

# 
print(climbingLeaderboard([100,100,50,40,40,20,10], [5,25,50,120]))