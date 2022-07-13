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
    bestScorePlayer = -1
    bestScorePlayerIndex = -1

    player.each do |play|
        if (play > bestScorePlayer)
            bestScorePlayer = play
            polPosition = 0
            previousScore = -1
            ranked.each_with_index do |rank, index|
                if rank != previousScore
                    polPosition += 1
                    previousScore = rank
                end
                if play >= rank
                    if (bestScorePlayerIndex != -1)
                        ranked.delete_at(bestScorePlayerIndex)
                    end
                    
                    bestScorePlayerIndex = index
                    ranked.insert(index, play)
                    positions.append(polPosition)
                    print(ranked)
                    puts('')
                    puts(polPosition)
                    break
                end

                # checked
                if (bestScorePlayerIndex == -1)
                    ranked.append(play)
                    bestScorePlayerIndex = ranked.length-1
                end

            end
        end
    end
    print(positions)
end

print(climbingLeaderboard([100,100,50,40,40,20,10], [5,25,50,120]))