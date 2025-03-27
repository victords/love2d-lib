require("lib.index")

function love.load()
  -- debug.debug()
  love.graphics.setDefaultFilter("nearest", "nearest")
  font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  txt = TextField.new(10, 10, { font = font, scale = 2, margin_x = 4, img_path = "data/img/textField.png", cursor_img_path = "data/img/cursor.png", cursor_img_gap = Vector.new(-3, -2) })
end

function love.update(dt)
  Mouse.update()
  KB.update()
  txt:update()

  if KB.pressed("lctrl") then txt:set_enabled(not txt.enabled) end
end

function love.draw()
  txt:draw()
end
