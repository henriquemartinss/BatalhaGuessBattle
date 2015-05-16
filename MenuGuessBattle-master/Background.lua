function newEsquerda( )
	local esquerda = display.newRect( 0, 0, display.contentWidth/2, display.contentHeight )
	esquerda.anchorX = 0
	esquerda.anchorY = 0
	esquerda:setFillColor( 44/255,176/255,172/255 )

	return esquerda 
end

function newDireita( )
	local direita = display.newRect( display.contentWidth, 0, display.contentWidth/2, display.contentHeight )
	direita.anchorX = 1
	direita.anchorY = 0
	direita:setFillColor( 227/255,79/225,145/255 )	

	return direita
end

function newOption( )
	local centro = display.newRect( 0, 0, display.contentWidth, display.contentHeight  )
	centro.anchorX = 0
	centro.anchorY = 0
	centro:setFillColor( 44/255,176/255,172/255 )	

	return centro
end

return {
	newOption = newOption,
	newEsquerda = newEsquerda,
	newDireita = newDireita
}