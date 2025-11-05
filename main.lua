require("lib.index")

function love.load()
  Window.init()

  image = Res.img("attack2")
  sprite = Sprite.new(100, 10, "attack4", 4, 2)
  game_object = GameObject.new(200, 10, 20, 20, "attack4", Vector.new(-5, -5), 4, 2)
  font = Res.font("font", 24)
  button = Button.new(210, 10, {img_path = "button1", font = font})
end

function love.update(dt)
  Mouse.update()
  button:update()
end

function love.draw()
  Window.draw(function ()
    image:draw(0, 10, 100)
    sprite:draw()
    game_object:draw(2, 2, {0.5, 0.5, 0.5}, nil, nil, 2)
    font:draw_text("OPA!", 10, 100)
    button:draw()
  end)
end
