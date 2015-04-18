local minion = {
	x = 200, 
	y = 200,
	speed = 2
}

function love.load()
	minion.image = love.graphics.newImage("graphics/minion.png")
	minion.laugh = love.audio.newSource("audio/minion_laugh.mp3")
	love.graphics.setBackgroundColor(255, 255, 255)
end

function love.draw()
	love.graphics.draw(minion.image, minion.x, minion.y)
end

function love.update()
	if love.keyboard.isDown("down") then
		minion.y = minion.y + minion.speed
	end
	
	if love.keyboard.isDown("up") then
		minion.y = minion.y - minion.speed
	end
	
	if love.keyboard.isDown("right") then
		minion.x = minion.x + minion.speed
	end

	if love.keyboard.isDown("left") then
		minion.x = minion.x - minion.speed
	end
end

function love.keypressed(key)
	if key == " " then
		love.audio.play(minion.laugh)
	elseif key == "escape" then
		love.event.push('quit') 	
	end
end
