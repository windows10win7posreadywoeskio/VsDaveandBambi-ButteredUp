-- Event notes hooks

scalenote = 0.9
step = 0
function onUpdate(elapsed)
if curStep >= 0 then
songPos2 = getSongPosition()
local currentBeat2 = (songPos2/5000)*(curBpm/160)
		noteTweenX("defaultPlayerStrumX01", 4, defaultPlayerStrumX0 + 100*math.sin((currentBeat2+4*0.25)*math.pi), 0.001)
		noteTweenX("defaultPlayerStrumX11", 5, defaultPlayerStrumX1 + 100*math.sin((currentBeat2+8*0.25)*math.pi), 0.001)
		noteTweenX("defaultPlayerStrumX21", 6, defaultPlayerStrumX2 + 100*math.sin((currentBeat2+4*0.25)*math.pi), 0.001)
		noteTweenX("defaultPlayerStrumX31", 7, defaultPlayerStrumX3 + 100*math.sin((currentBeat2+8*0.25)*math.pi), 0.001)

		noteTweenY("defaultPlayerStrumY01", 4, defaultPlayerStrumY0 + 200 + 100*math.cos((currentBeat2+4*0.25)*math.pi), 0.001)
		noteTweenY("defaultPlayerStrumY11", 5, defaultPlayerStrumY1 + 200 + 100*math.cos((currentBeat2+8*0.25)*math.pi), 0.001)
		noteTweenY("defaultPlayerStrumY21", 6, defaultPlayerStrumY2 + 200 + 100*math.cos((currentBeat2+4*0.25)*math.pi), 0.001)
		noteTweenY("defaultPlayerStrumY31", 7, defaultPlayerStrumY3 + 200 + 100*math.cos((currentBeat2+8*0.25)*math.pi), 0.001)

		--doTweenY("boeScale", 'gf', 0 + 100*math.sin((currentBeat2+4*0.25)*math.pi), 0.001)
		for i = 4,7 do setPropertyFromGroup('strumLineNotes', i, 'scale.y', scalenote) end
		--debugPrint(scalenote)
step = step + 1
if step < 241 then
if scalenote > -1 then
scalenote = scalenote - 0.01
else
step = 240
end
end
if step > 241 then
if scalenote < 1 then
scalenote = scalenote + 0.01
else
step = 0
end
end
end
end

