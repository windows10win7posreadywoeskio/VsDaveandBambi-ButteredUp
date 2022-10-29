function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' then
		makeLuaSprite('whitebg', '', -500, -300)
		makeGraphic('whitebg',5000,5000,'ffffff')
		addLuaSprite('whitebg', false)
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
	end
	if name == 'badapplelol' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color')
		setProperty('dad.color')
		setProperty('gf.color')
	end
end