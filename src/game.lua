require("lib.index")

function love.load()
  tileset = Tileset.new("data/img/attack4.png", 4, 2)
end

function love.update(dt)
end

function love.draw()
  tileset[1]:draw(0, 0)
  tileset[2]:draw(50, 0)
  tileset[3]:draw(100, 0)
  tileset[4]:draw(150, 0)
end
