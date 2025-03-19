require("lib.index")

function love.load()
  map = Map.new(30, 17, 50, 50, 800, 600, true)
  t_h_x = map.tile_size.x / 2
  t_h_y = map.tile_size.y / 2
end

function love.update(dt)
  KB.update()
  Mouse.update()

  local speed = KB.down("lshift") and 10 or 3
  if KB.down("left") then
    map:move_camera(-speed, 0)
  elseif KB.down("right") then
    map:move_camera(speed, 0)
  elseif KB.down("up") then
    map:move_camera(0, -speed)
  elseif KB.down("down") then
    map:move_camera(0, speed)
  end
end

function love.draw()
  local tile_count = 0
  local mouse_pos = map:get_map_pos(Mouse.x, Mouse.y)
  map:foreach(function (i, j, x, y)
    local mode = i == mouse_pos.x and j == mouse_pos.y and "fill" or "line"
    love.graphics.polygon(
      mode,
      x + t_h_x, y,
      x, y + t_h_y,
      x + t_h_x, y + map.tile_size.y,
      x + map.tile_size.x, y + t_h_y
    )
    tile_count = tile_count + 1
  end)
  print(tile_count)
  print(love.timer.getFPS())
end
