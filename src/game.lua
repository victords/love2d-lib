require("lib.index")

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  text_helper = TextHelper.new(font, 2, 2)
  width = 300
end

function love.update(dt)
  if width < 600 then width = width + 1 else width = width - 1 end
end

function love.draw()
  text_helper:write_breaking("Here's some really long text to test line breaking due to limited space.\nWe can even introduce manual line breaks!", 10, 10, width, "justify")
end
