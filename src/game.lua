require("lib.index")

function love.load()
  Image.setRetro()
  font = Res.font("font")
  img_font = ImageFont.new("font", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  btn = Button.new(10, 10, { font = font, text = "button", img_path = "button1", scale = 2 })
  sprite = Sprite.new(10, 60, "attack4", 4, 2)
end

function love.update(dt)
  Mouse.update()
  btn:update()
  sprite:animate({1, 2, 3, 4, 5, 6, 7, 8}, 7)
end

function love.draw()
  img_font:draw_text("opaaaa", 400, 10)
  btn:draw()
  sprite:draw(2, 2)
end
