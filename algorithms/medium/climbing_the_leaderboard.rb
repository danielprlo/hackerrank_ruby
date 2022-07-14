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
    scoreBoardPoints = {}
    playerCurrentPosition = ranked.length
  
    player.each do |play|
        playerScoreFound = false

        ranked.delete_at(playerCurrentPosition)      

        i = playerCurrentPosition - 1
        while i >= 0 && !playerScoreFound
            if play < ranked[i]
                ranked.insert(i+1, play)
                playerCurrentPosition = i+1
                playerScoreFound = true
            end    
            i -= 1
        end

        if !playerScoreFound
            playerCurrentPosition = 0
            ranked.insert(0, play)
        end
        
        if scoreBoardPoints.empty?()
            previousValue = Float::INFINITY
            boardScore = 0
            (0).upto(playerCurrentPosition) do |i|
                if ranked[i] < previousValue
                    boardScore += 1
                    scoreBoardPoints[i] = boardScore
                    previousValue = ranked[i]
                elsif ranked[i] == previousValue
                    scoreBoardPoints[i] = boardScore    
                end
            end
        end
        positions.append(scoreBoardPoints[playerCurrentPosition])
    end
    return positions
end

# 
print(climbingLeaderboard([100,100,50,40,40,20,10], [5,25,50,120]))