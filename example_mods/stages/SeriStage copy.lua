function onCreate()
	-- background shit
	makeLuaSprite('green space', 'green space', -600, -300);
	setScrollFactor('green space', 0.9, 0.9);
	
	makeLuaSprite('objects', 'objects', -650, 600);
	setScrollFactor('objects', 0.9, 0.9);
	scaleObject('objects', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	

	addLuaSprite('green space', false);
	addLuaSprite('objects', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end