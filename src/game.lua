require("lib.index")

function love.load()
  -- debug.debug()
  love.graphics.setDefaultFilter("nearest", "nearest")
  local font = ImageFont.new("data/font/font.png", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzÁÉÍÓÚÀÃÕÂÊÔÑÇáéíóúàãõâêôñç0123456789.,:;!?¡¿/\\()[]+-%'\"←→∞$ ", 1)
  local btn = Button.new(10, 0, {font = font, text = "Button", img_path = "data/img/button1.png", scale = 2, anchor = "right"})
  panel = Panel.new(10, 10, 300, 300, {btn}, {img_path = "data/img/panel.png", tiled = true})
end

function love.update(dt)
  Mouse.update()
  KB.update()
  panel:update()

  if KB.pressed("lctrl") then panel:set_enabled(not panel.enabled) end
end

function love.draw()
  panel:draw()
end
