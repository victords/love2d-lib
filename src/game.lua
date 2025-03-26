require("lib.index")

function love.load()
  -- debug.debug()
  font = Font.new("data/font/font.ttf")
  txt = TextField.new(10, 10, { font = font, scale = 2 })
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
