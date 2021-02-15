-- Dog Grooming Game
-- By Kaitlyn Randolph 
-- 2/14/21
-- a little click-and-drag dog grooming sim game :^)

----------------
--  Variables --
-----------------
love.graphics.setDefaultFilter('nearest', 'nearest')
local dogs = {}
local bath = {}
local logo = {}
dogs.img = love.graphics.newImage('Textures/dog.png')
bath.img = love.graphics.newImage('Textures/bath.png')
logo.img = love.graphics.newImage('Textures/logo.png')
font = love.graphics.newFont('Font/Sniglet-Regular.ttf', 32)
scale_value = 6

-----------------
--  Functions  --
-----------------
function love.load()
	love.window.setMode(600, 600, {vsync=false})
	game_over = false
	game_win = false
	--setBackgroundGraphic()
	setBackgroundMusic()
end

function love.update(dt)
	--particle_systems:update(dt)
	--winCheck()
end

function love.draw()
	love.graphics.setFont(font)
	love.graphics.print("Hello World", 400, 300)
end

function setBackgroundMusic()
	-- "reveller" (c) Dee Yan-Key, found at: https://freemusicarchive.org/music/Dee_Yan-Key/little-night-thoughts/reveller
	local music = love.audio.newSource('Audio/Dee Yan-Key - reveller.mp3', 'static')
	music:setLooping(true)
	love.audio.play(music)
end