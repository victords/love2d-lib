require("lib.index")

function love.load()
  -- debug.debug()
  love.graphics.setDefaultFilter("nearest", "nearest")
  local font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  lbl = Label.new(10, 0, {font = font, text = "Button", color = {0, 0, 0}, scale = 2, anchor = "right"})
  lbl2 = Label.new(10, 320, {font = font, text = "Testing here", scale = 2})
  panel = Panel.new(10, 10, 300, 300, {lbl}, {img_path = "data/img/panel.png", tiled = true})
end

function love.update(dt)
  Mouse.update()
  KB.update()
  panel:update()

  if KB.pressed("lshift") then lbl:set_text("changed text!") end
  if KB.pressed("rshift") then lbl2:set_enabled(not lbl2.enabled) end
  if KB.pressed("lctrl") then panel:set_enabled(not panel.enabled) end
end

function love.draw()
  panel:draw()
  lbl2:draw({1, 0.5, 0.5})
end
