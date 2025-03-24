Mouse = {
  cur_down = {},
  prev_down = {}
}
local button_number_to_name = { "left", "right", "middle" }
for _, v in pairs(button_number_to_name) do
  Mouse.cur_down[v] = false
end

function Mouse.update()
  Mouse.x = love.mouse.getX()
  Mouse.y = love.mouse.getY()
  for i, v in ipairs(button_number_to_name) do
    Mouse.prev_down[v] = Mouse.cur_down[v]
    Mouse.cur_down[v] = love.mouse.isDown(i)
  end
end

function Mouse.down(button_name)
  return Mouse.cur_down[button_name]
end

function Mouse.pressed(button_name)
  return Mouse.cur_down[button_name] and not Mouse.prev_down[button_name]
end

function Mouse.released(button_name)
  return Mouse.prev_down[button_name] and not Mouse.cur_down[button_name]
end
