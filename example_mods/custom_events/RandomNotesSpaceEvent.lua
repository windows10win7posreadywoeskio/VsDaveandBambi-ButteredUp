speed1 = 1
speed2 = 0.1
sus = 0
local hitsSPACE = 4;
function onCreatePost()
	makeAnimatedLuaSprite('PuffNotes',	'spacebar', 400, 200)
	scaleObject('PuffNotes', 0.5, 0.5)
	setObjectCamera('PuffNotes', 'other')

	addLuaSprite('PuffNotes', true)
	addAnimationByPrefix('PuffNotes', 'i', 'spacebar', 24, true)

	setProperty('PuffNotes.visible', false)
end

function onEvent(name, value1, value2)
	if difficulty >= 1 then
	if name == 'RandomNotesSpaceEvent' then
		hitsSPACE = 0

		noteTweenX('bf1', 4, getRandomInt(200, 1100), speed1, 'sineOut')
		noteTweenX('bf2', 5, getRandomInt(200, 1100), speed1, 'sineOut')
		noteTweenX('bf3', 6, getRandomInt(200, 1100), speed1, 'sineOut')
		noteTweenX('bf4', 7, getRandomInt(200, 1100), speed1, 'sineOut')

		noteTweenY('bf1Y', 4, getRandomInt(200, 600), speed1, 'sineOut')
		noteTweenY('bf2Y', 5, getRandomInt(200, 600), speed1, 'sineOut')
		noteTweenY('bf3Y', 6, getRandomInt(200, 600), speed1, 'sineOut')
		noteTweenY('bf4Y', 7, getRandomInt(200, 600), speed1, 'sineOut')
	end
end
end
function onUpdate()
	if hitsSPACE < 4 then
		setProperty('PuffNotes.visible', true)

		if keyJustPressed('space') and getProperty('cpuControlled') == false then
			hitsSPACE = hitsSPACE + 1;
   			playSound('fartsound', 1)
			objectPlayAnimation('PuffNotes', 'i', true)
		end
	end
	if hitsSPACE == 1 then
		noteTweenX('bf1', 4, defaultPlayerStrumX0, speed2, 'sineOut')
		noteTweenY('bf1Y', 4, defaultPlayerStrumY0, speed2, 'sineOut')
	end
	if hitsSPACE == 2 then
		noteTweenX('bf2', 5, defaultPlayerStrumX1, speed2, 'sineOut')
		noteTweenY('bf2Y', 5, defaultPlayerStrumY1, speed2, 'sineOut')
	end
	if hitsSPACE == 3 then
		noteTweenX('bf3', 6, defaultPlayerStrumX2, speed2, 'sineOut')
		noteTweenY('bf3Y', 6, defaultPlayerStrumY2, speed2, 'sineOut')
	end
	if hitsSPACE == 4 then
		noteTweenX('bf4', 7, defaultPlayerStrumX3, speed2, 'sineOut')
		noteTweenY('bf4Y', 7, defaultPlayerStrumY3, speed2, 'sineOut')
		hitsSPACE = 5;
	end
	if hitsSPACE == 5 then
		setProperty('PuffNotes.visible', false)
		objectPlayAnimation('PuffNotes', 'i', true)
	end
end

function onBeatHit()
	if hitsSPACE < 5 and getProperty('cpuControlled') == true then
		hitsSPACE = hitsSPACE + 1;
   		playSound('fartsound', 1)
		objectPlayAnimation('PuffNotes', 'i', true)
	end
end





