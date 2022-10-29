function onCreatePost()
	makeLuaSprite('spiral', 'seri1', -1650, -900);
	setScrollFactor('spiral', 0.1, 0.1);
	makeLuaSprite('cubes2', 'seri5', -1000, -950);
	setScrollFactor('cubes2', 1, 1);

	addLuaSprite('spiral', false);

	
		if getPropertyFromClass('ClientPrefs', 'lowQuality') == false then
		makeLuaSprite('fries', 'seri2', -1650, -900);
		setScrollFactor('fries', 0.3, 0.3);

		makeLuaSprite('ketchup', 'seri3', -1650, -900);
		setScrollFactor('ketchup', 0.4, 0.4);

		makeLuaSprite('cubes1', 'seri4', -1650, -900);
		setScrollFactor('cubes1', 0.5, 0.5);

		--addLuaSprite('fries', false);

		addLuaSprite('ketchup', false);

		addLuaSprite('cubes1', false);

		setBlendMode('ketchup', 'add');

		setBlendMode('fries', 'lighten');

		setProperty('cubes1.scale.x', 0.5)
		setProperty('cubes1.scale.y', 0.5)

		setProperty('fries.scale.x', 0.5)
		setProperty('fries.scale.y', 0.5)
		end

	addLuaSprite('cubes2', false)
end
function onUpdate()

	songPos = getSongPosition()

	scalethingx = math.sin(songPos/500)
	scalethingy = math.sin(songPos/500) * -1

	setProperty('spiral.angle', getProperty('spiral.angle') + 2 * (curBpm/50))
	if getProperty('spiral.angle') >= 360 then
		setProperty('spiral.angle',0)
	end

	setProperty('ketchup.angle', getProperty('ketchup.angle') - 0.75 * (curBpm/50))
	if getProperty('ketchup.angle') <= 0 then
		setProperty('ketchup.angle',360)
	end

	setProperty('ketchup.scale.x', (scalethingx + 1.5) * 1.5)
	setProperty('ketchup.scale.y', (scalethingy + 1.5) * 1.5)
	etProperty('ketchup.x', (scalethingx + 1.5) * 1.5)
	setProperty('ketchup.y', (scalethingy + 1.5) * 1.5)
end

function addfuckingcubes()
	
end