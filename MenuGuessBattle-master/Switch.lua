local widget = require( "widget" )

-- Handle press events for the checkbox
local function onSwitchPress( event )
    local switch = event.target
    print( "Switch with ID '"..switch.id.."' is on: "..tostring(switch.isOn) )
end

function new(  )

    local onOffSwitch = widget.newSwitch
    {
        left = 170,
        top = 100,
        style = "onOff",
        id = "onOffSwitch",
        onPress = onSwitchPress
    }
    return onOffSwitch
end
return {
    new = new
}


