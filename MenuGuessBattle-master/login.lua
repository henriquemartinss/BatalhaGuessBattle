---------------------------------------------------------------------------------
--
-- scene.lua
--
---------------------------------------------------------------------------------

local composer = require( "composer" )
local Botao = require( "Botao" )
local Background = require( "Background" )


-- Load scene with same root filename as this file
local scene = composer.newScene(  )

---------------------------------------------------------------------------------

function scene:create( event )
    local sceneGroup = self.view

    -- Called when the scene's view does not exist
    -- 
    -- INSERT code here to initialize the scene
    -- e.g. add display objects to 'sceneGroup', add touch listeners, etc
    
end

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if phase == "will" then
        local esquerda = Background.newEsquerda()
        local direita = Background.newDireita()
        sceneGroup:insert( esquerda )
        sceneGroup:insert( direita )
        

    elseif phase == "did" then
        
        local btnFace = Botao.newFacebook("Facebook", display.contentCenterX,display.contentCenterY-40)
        local btnCon = Botao.new("Convidado", display.contentCenterX,display.contentCenterY+40)
        sceneGroup:insert( btnFace )
        sceneGroup:insert( btnCon )

        btnCon:addEventListener( "tap", function (  )
            composer.gotoScene( "mainmenu" ,{effect = "zoomInOutFade",time = 300} )
            composer.removeScene( scene )
        end )

         
    end 
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
        -- Called when the scene is on screen and is about to move off screen
        --
        -- INSERT code here to pause the scene
        -- e.g. stop timers, stop animation, unload sounds, etc.)
    elseif phase == "did" then
        -- Called when the scene is now off screen
    end 
end


function scene:destroy( event )
    local sceneGroup = self.view

    -- Called prior to the removal of scene's "view" (sceneGroup)
    -- 
    -- INSERT code here to cleanup the scene
    -- e.g. remove display objects, remove touch listeners, save state, etc
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene
