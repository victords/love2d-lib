require("lib.index")

function love.load()
  -- debug.debug()
  love.graphics.setDefaultFilter("nearest", "nearest")
  font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  ddl = DropDownList.new(10, 10, {font = font, values = {"opt1", "opt2", "opt3"}, selected_index = 2, img_path = "data/img/button1.png", opt_img_path = "data/img/button1.png", scale = 2})
end

function love.update(dt)
  Mouse.update()
  KB.update()
  ddl:update()

  if KB.pressed("lctrl") then txt:set_enabled(not txt.enabled) end
end

function love.draw()
  ddl:draw()
end
