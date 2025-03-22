require("lib.index")

function love.load()
  love.graphics.setDefaultFilter("nearest", "nearest")
  font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  text_helper = TextHelper.new(font)
end

function love.update(dt)
end

function love.draw()
  text_helper:write_line("top-left aligned", 10, 10)
  text_helper:write_line("centered", 400, 300, "center", {1, 0.2, 0.2}, "border", 2, {1, 1, 1}, 2)
  text_helper:write_line("bottom-right aligned", 790, 570, "right", {0.2, 0.2, 1}, "shadow", 2, {0, 1, 0, 0.5}, 2)
end
