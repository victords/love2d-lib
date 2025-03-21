require("lib.index")

function love.load()
  font = Font.new("data/font/font.ttf", 24)
  text = "HAHAHA!! aduadufigdf"
  x = font:text_width(text) + 10
end

function love.update(dt)
end

function love.draw()
  font:write(text, 10, 10)
  font:write("atenção, ()", 10, 40, { 255, 0, 0 }, 2, 3)
  love.graphics.rectangle("fill", x, 10, 20, font.height)
end
