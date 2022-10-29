function onEvent(name,value1,value2)
if name == 'TestRotation' then
if value1 == 1 then
doTweenAngle('turnp', 'boyfriend', value2, 1, 'cubeOut')
else
doTweenAngle('turno', 'dad', value2, 1, 'cubeOut')
end
end
end