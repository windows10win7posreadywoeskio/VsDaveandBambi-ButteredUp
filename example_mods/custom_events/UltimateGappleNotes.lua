function onEvent(name, value1, value2)
    if name == 'UltimateGappleNotes' then
        typeN = tonumber(value1)
        if typeN < 0 then
            typeN = 0;
        end
end
end
     

function onUpdate(elapsed)
    songPos = getSongPosition()
 if typeN <= 0 then
     local currentBeat = (songPos/0)*(curBpm/0)
        local currentBeat2 = (songPos/0)*(curBpm/0)
        noteTweenX('bfUlt1', 4, defaultPlayerStrumX0, 0.1, 'sineOut')
        noteTweenY('bfUlt1Y', 4, defaultPlayerStrumY0, 0.1, 'sineOut')
        noteTweenX('bfUlt2', 5, defaultPlayerStrumX1, 0.1, 'sineOut')
        noteTweenY('bfUlt2Y', 5, defaultPlayerStrumY1, 0.1, 'sineOut')
        noteTweenX('bfUlt3', 6, defaultPlayerStrumX2, 0.1, 'sineOut')
        noteTweenY('bfUlt3Y', 6, defaultPlayerStrumY2, 0.1, 'sineOut')
        noteTweenX('bfUlt4', 7, defaultPlayerStrumX3, 0.1, 'sineOut')
        noteTweenY('bfUlt4Y', 7, defaultPlayerStrumY3, 0.1, 'sineOut')

        noteTweenX('OppUlt1', 0, defaultOpponentStrumX0, 0.1, 'sineOut')
        noteTweenY('OppUlt1Y', 0, defaultOpponentStrumY0, 0.1, 'sineOut')
        noteTweenX('OppUlt2', 1, defaultOpponentStrumX1, 0.1, 'sineOut')
        noteTweenY('OppUlt2Y', 1, defaultOpponentStrumY1, 0.1, 'sineOut')
        noteTweenX('OppUlt3', 2, defaultOpponentStrumX2, 0.1, 'sineOut')
        noteTweenY('OppUlt3Y', 2, defaultOpponentStrumY2, 0.1, 'sineOut')
        noteTweenX('OppUlt4', 3, defaultOpponentStrumX3, 0.1, 'sineOut')
        noteTweenY('OppUlt4Y', 3, defaultOpponentStrumY3, 0.1, 'sineOut')
    end
    if typeN == 1 then
        songPos = getSongPosition()
            local currentBeat = (songPos/5000)*(curBpm/500)
            local currentBeat2 = (songPos/500)*(curBpm/500)
            noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 - 150*math.sin((currentBeat2+4*0.25)*math.pi), 1.5)
            noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 - 150*math.sin((currentBeat2+0*0.25)*math.pi), 1.5)
            noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 - 150*math.sin((currentBeat2+4*0.25)*math.pi), 1.5)
            noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 - 150*math.sin((currentBeat2+0*0.25)*math.pi), 1.5)
    
            noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 + 150*math.sin((currentBeat2+4*0.25)*math.pi), 1.5)
            noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 + 150*math.sin((currentBeat2+0*0.25)*math.pi), 1.5)
            noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 + 150*math.sin((currentBeat2+4*0.25)*math.pi), 1.5)
            noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 + 150*math.sin((currentBeat2+0*0.25)*math.pi), 1.5)
            local currentBeat = (songPos/5000)*(curBpm/500)
            local currentBeat2 = (songPos/500)*(curBpm/500)
            noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 150*math.sin((currentBeat2+6*0.25)*math.pi), 1.5)
            noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 150*math.sin((currentBeat2+2*0.25)*math.pi), 1.5)
            noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 150*math.sin((currentBeat2+6*0.25)*math.pi), 1.5)
            noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 150*math.sin((currentBeat2+2*0.25)*math.pi), 1.5)
    
            noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 150*math.sin((currentBeat2+6*0.25)*math.pi), 1.5)
            noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 150*math.sin((currentBeat2+2*0.25)*math.pi), 1.5)
            noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 150*math.sin((currentBeat2+6*0.25)*math.pi), 1.5)
            noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 150*math.sin((currentBeat2+2*0.25)*math.pi), 1.5)
        end
    
    if typeN == 2 then
        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/500)
        local currentBeat2 = (songPos/500)*(curBpm/500)

        noteTweenX('defaultPlayerStrumX0', 4, 590 + 950*math.sin((currentBeat2+0*0.25)*math.pi), 1.5)
        noteTweenX('defaultPlayerStrumX1', 5, 590 + 950*math.sin((currentBeat2+1*0.25)*math.pi), 1.5)
        noteTweenX('defaultPlayerStrumX2', 6, 590 + 950*math.sin((currentBeat2+2*0.25)*math.pi), 1.5)
        noteTweenX('defaultPlayerStrumX3', 7, 590 + 950*math.sin((currentBeat2+3*0.25)*math.pi), 1.5)
        
        noteTweenY('defaultPlayerStrumY0', 4, 320 + 950*math.sin((currentBeat2+2*0.25)*math.pi), 1.5)
        noteTweenY('defaultPlayerStrumY1', 5, 320 + 950*math.sin((currentBeat2+3*0.25)*math.pi), 1.5)
        noteTweenY('defaultPlayerStrumY2', 6, 320 + 950*math.sin((currentBeat2+4*0.25)*math.pi), 1.5)
        noteTweenY('defaultPlayerStrumY3', 7, 320 + 950*math.sin((currentBeat2+5*0.25)*math.pi), 1.5)

        local currentBeat = (songPos/5000)*(curBpm/300)
        local currentBeat2 = (songPos/500)*(curBpm/300)

        noteTweenX('defaultOpponentStrumX0', 0, 590 + 1450*math.sin((currentBeat2+2.1*0.25)*math.pi), 1.5)
        noteTweenX('defaultOpponentStrumX1', 1, 590 + 1450*math.sin((currentBeat2+5.3*0.25)*math.pi), 1.5)
        noteTweenX('defaultOpponentStrumX2', 2, 590 + 1450*math.sin((currentBeat2+7.3*0.25)*math.pi), 1.5)
        noteTweenX('defaultOpponentStrumX3', 3, 590 + 1450*math.sin((currentBeat2+2.8*0.25)*math.pi), 1.5)

        noteTweenY('defaultOpponentStrumY0', 0, 320 + 1450*math.sin((currentBeat2+4.1*0.25)*math.pi), 1.5)
        noteTweenY('defaultOpponentStrumY1', 1, 320 + 1450*math.sin((currentBeat2+7.3*0.25)*math.pi), 1.5)
        noteTweenY('defaultOpponentStrumY2', 2, 320 + 1450*math.sin((currentBeat2+9.3*0.25)*math.pi), 1.5)
        noteTweenY('defaultOpponentStrumY3', 3, 320 + 1450*math.sin((currentBeat2+4.8*0.25)*math.pi), 1.5)
    end
end