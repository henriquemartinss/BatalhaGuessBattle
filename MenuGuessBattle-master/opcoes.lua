---------------------------------------------------------------------------------
--
-- scene.lua
--
---------------------------------------------------------------------------------

local composer = require( "composer" )
local Botao = require( "Botao" )
local Background = require( "Background" )
local Switch = require( "Switch" )
local mainmenu = require("mainmenu")

-- Load scene with same root filename as this file
local scene = composer.newScene(  )

---------------------------------------------------------------------------------

function scene:create( event )
    local sceneGroup = self.view

    local btnBack
    local myText
    local switch

    -- Called when the scene's view does not exist
    -- 
    -- INSERT code here to initialize the scene
    -- e.g. add display objects to 'sceneGroup', add touch listeners, etc
    
end

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if phase == "will" then
        local centro = Background.newOption()
        sceneGroup:insert( centro )
        

    elseif phase == "did" then

        switch = Switch.new()


        myText = display.newText( "Desligar / Ligar Som:", 90, 120, native.systemFont, 16 )
        myText:setFillColor( 255, 255 , 255 )

        btnBack = Botao.newMenu("Voltar", 86, 380)
        sceneGroup:insert( btnBack )


    btnBack:addEventListener( "tap", function (  )
            composer.gotoScene( "mainmenu" ,{effect = "zoomInOutFade",time = 300} )
            composer.removeScene( scene )

        end )
    end 
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
        display.remove( switch )
        display.remove( btnBack )
        display.remove( myText )
        -- Called when the scene is on screen and is about to move off screen
        --
        -- INSERT code here to pause the scene
        -- e.g. stop timers, stop animation, unload sounds, etc.)
    elseif phase == "did" then

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
