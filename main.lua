require("lib.index")

function love.load()
  Window.init()
  Physics.set_engine("love")

  image = Res.img("attack2")
  sprite = Sprite.new(100, 10, "attack4", 4, 2)
  game_object = GameObject.new(200, 10, 20, 20, nil, Vector.new(-5, -5), 4, 2, {shape = "circle"})
  font = Res.font("font", 24)
  button = Button.new(210, 10, {img_path = "button1", font = font, text = "Press me"})
end

function love.update(dt)
  Mouse.update()
  button:update()
end

function love.draw()
  Window.draw(function ()
    image:draw(0, 10, 100)
    sprite:draw()
    game_object:draw_shape({1, 0, 1}, 2)
    font:draw_text("OPA!", 10, 100)
    button:draw()

    Window.draw_rectangle(200, 200, 2, 50, 50, {1, 0, 0})
    Window.draw_rectangle(210, 210, 2, 50, 50, {0, 1, 0})
    Window.draw_rectangle(220, 220, 1, 50, 50, {0, 0, 1})
  end)
end
