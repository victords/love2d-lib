require("lib.index")

function love.load()
  font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
end

function love.update(dt)
end

function love.draw()
  font:draw_text_rel("top-left aligned", 10, 10, 0, 0, {1, 1, 1}, 2)
  font:draw_text_rel("centered", 400, 300, 0.5, 0.5, {1, 0.2, 0.2}, 2)
  font:draw_text_rel("bottom-right aligned", 790, 590, 1, 1, {0.2, 0.2, 1}, 2)
  font:draw_text_rel("Atenção, rapaz! ()[]", 10, 50)
end
