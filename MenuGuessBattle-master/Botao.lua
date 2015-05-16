local widget = require( "widget" )

function new( texto,x,y )
	local options = {
		x=x,
		y=y,
		width=display.contentWidth / 100 * 40,
		height=display.contentHeight / 100 * 15,
		label=texto,
		labelColor = { default={1,1,1}, over={0,0,0} },
		emboss=true,
		fontSize=40,
		labelAlign="center",
		font=native.systemFont,
		shape="roundedRect",
		cornerRadius=10,
		fillColor = { default={0.5,0.5,0.5}, over={0.3,0.3,0.3} },
		--strokeColor = { default={0,0,0}, over={0,0,0} },
		--strokeWidth = 3
	}
	local botao = widget.newButton( options )
	botao:scale( 0, 0 )
	transition.scaleTo( botao, {xScale=1,yScale=1,time=100} )
	
	return botao
end

function newOpcoes( texto,x,y )
	local options = {
		x=x,
		y=y,
		width=display.contentWidth / 100 * 15,
		height=display.contentHeight / 100 * 40,
		label=texto,
		labelColor = { default={1,1,1}, over={0,0,0} },
		emboss=true,
		fontSize=40,
		labelAlign="center",
		font=native.systemFont,
		shape="roundedRect",
		cornerRadius=10,
		fillColor = { default={0.5,0.5,0.5}, over={0.3,0.3,0.3} },
		--strokeColor = { default={0,0,0}, over={0,0,0} },
		--strokeWidth = 3
	}
	local botao = widget.newButton( options )
	botao:scale( 0, 0 )
	transition.scaleTo( botao, {xScale=1,yScale=1,time=100} )
	
	return botao
end
function newMenu( texto,x,y )
	local options = {
		x=display.contentWidth / 100 * x,
		y=y,
		width=display.contentWidth / 100 * 20,
		height=display.contentHeight / 100 * 30,
		label=texto,
		labelColor = { default={1,1,1}, over={0,0,0} },
		emboss=true,
		fontSize=30,
		labelAlign="center",
		font=native.systemFont,
		shape="roundedRect",
		cornerRadius=10,
		fillColor = { default={0.5,0.5,0.5}, over={0.3,0.3,0.3} },
		--strokeColor = { default={0,0,0}, over={0,0,0} },
		--strokeWidth = 3
	}
	local botao = widget.newButton( options )
	botao:scale( 0, 0 )
	transition.scaleTo( botao, {xScale=1,yScale=1,time=100} )
	
	return botao
end

function newFacebook( texto,x,y )
	local options = {
		x=x,
		y=y,
		width=display.contentWidth / 100 * 40,
		height=display.contentHeight / 100 * 15,
		label=texto,
		labelColor = { default={1,1,1}, over={0,0,0} },
		emboss=true,
		fontSize=40,
		labelAlign="center",
		font=native.systemFont,
		shape="roundedRect",
		cornerRadius=10,
		fillColor = { default={45/255,67/255,130/255}, over={0.3,0.3,0.3} },
		--strokeColor = { default={0,0,0}, over={0,0,0} },
		--strokeWidth = 3
	}
	local botao = widget.newButton( options )
	botao:scale( 0, 0 )
	transition.scaleTo( botao, {xScale=1,yScale=1,time=100} )
	
	return botao
end

function newLetra( texto,x,y )
	local options = {
		id=texto,
		x=x,
		y=y,
		width=display.contentWidth / 100 * 6,
		height=display.contentHeight / 100 * 11,
		label=texto,
		labelColor = { default={0,0,0}, over={0,0,0} },
		emboss=true,
		fontSize=30,
		labelAlign="center",
		font=native.systemFont,
		shape="roundedRect",
		cornerRadius=10,
		fillColor = { default={0.5,0.5,0.5}, over={0.3,0.3,0.3} },
		strokeColor = { default={0,0,0}, over={0,0,0} },
		strokeWidth = 3
	}
	local botao = widget.newButton( options )
	botao.anchorX = 0.5
	botao.anchorY = 0.5
	botao:scale( 0, 0 )
	transition.scaleTo( botao, {xScale=1,yScale=1,time=100} )

	return botao
end

function newDica( texto,x,y )
	local options = {
		id=texto,
		x=x,
		y=y,
		width=display.contentWidth / 100 * 60,
		height=display.contentHeight / 100 * 15,
		label=texto,
		labelColor = { default={0,0,0}, over={0,0,0} },
		emboss=true,
		fontSize=25,
		labelAlign="center",
		font=native.systemFont,
		shape="roundedRect",
		cornerRadius=10,
		fillColor = { default={0.5,0.5,0.5}, over={0.3,0.3,0.3} },
		strokeColor = { default={0,0,0}, over={0,0,0} },
		strokeWidth = 3
	}
	local botao = widget.newButton( options )
	botao.anchorX = 0.5
	botao.anchorY = 0.5
	--botao.alpha = 0.7
	botao:scale( 0, 0 )
	transition.scaleTo( botao, {xScale=1,yScale=1,time=100} )

	return botao
end

return {
	new = new,
	newLetra = newLetra,
	newDica = newDica,
	newFacebook = newFacebook,
	newMenu = newMenu
}

