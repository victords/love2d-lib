require("lib.index")

function love.load()
  Window.init()
  font = Res.font("font", 20)
  panel = Panel.new(10, 10, 160, 160, {
    Button.new(5, -10, {img_path = "button1", font = font}),
    Button.new(120, 5, {img_path = "button1", font = font}),
    Button.new(-40, 55, {img_path = "button1", font = font}),
    Button.new(5, 150, {img_path = "button1", font = font}),
    TextField.new(120, 50, {font = font})
  }, {img_path = "panel", tiled = true, clip = true})
end

function love.update(dt)
  Mouse.update()
  KB.update()
  panel:update()
end

function love.draw()
  panel:draw()
end
