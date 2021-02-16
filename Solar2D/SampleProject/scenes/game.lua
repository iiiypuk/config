local composer = require('composer')
 
local scene = composer.newScene()

local groupBack
local groupMain
local groupUI


function gameLoop()
	-- 
end

local function onFrame(event)
	-- 
end

 
function scene:create(event)
	local sceneGroup = self.view
	
	groupBack = display.newGroup()
	groupMain = display.newGroup()
	groupUI = display.newGroup()

	local debugRect = display.newRect(display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
	debugRect:setFillColor(0.807, 0.925, 0.956)
end


function scene:show(event)
	local sceneGroup = self.view
	local phase = event.phase
 
	if (phase == "will") then
		-- Code here runs when the scene is still off screen (but is about to come on screen)
 
	elseif (phase == "did") then
		gameLoopTimer = timer.performWithDelay(500, gameLoop, 0)
	end
end
 

function scene:hide(event)
	local sceneGroup = self.view
	local phase = event.phase
 
	if (phase == "will") then
		-- Code here runs when the scene is on screen (but is about to go off screen)
 
	elseif (phase == "did") then
		-- Code here runs immediately after the scene goes entirely off screen
 
	end
end
 

function scene:destroy(event)
	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view
end


scene:addEventListener('create', scene)
scene:addEventListener('show', scene)
scene:addEventListener('hide', scene)
scene:addEventListener('destroy', scene)
Runtime:addEventListener('enterFrame', onFrame)
 
return scene
