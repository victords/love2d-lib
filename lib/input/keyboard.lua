KB = {
  cur_down = {},
  prev_down = {},
  held_timer = {},
  held_delay = 30,
  held_interval = 5,
}
local KEY_CODES = {
  "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
  "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "kp0", "kp1", "kp2", "kp3", "kp4", "kp5", "kp6", "kp7", "kp8", "kp9",
  "space", "'", "-", "=", "[", "]", "\\", "/", ",", ".", ";", "kp+", "kp-", "kp*", "kp/", "kpenter",
  "up", "down", "left", "right", "home", "end", "pageup", "pagedown", "insert", "backspace", "tab", "return", "delete", "escape",
  "lshift", "rshift", "lctrl", "rctrl", "lalt", "ralt",
  "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10", "f11", "f12"
}
for _, v in pairs(KEY_CODES) do
  KB.cur_down[v] = false
  KB.held_timer[v] = 0
end

function KB.update()
  for _, v in pairs(KEY_CODES) do
    KB.prev_down[v] = KB.cur_down[v]
    local cur_down = love.keyboard.isDown(v)
    if cur_down then
      KB.held_timer[v] = KB.held_timer[v] + 1
    else
      KB.held_timer[v] = 0
    end
    KB.cur_down[v] = cur_down
  end
end

function KB.down(key)
  return KB.cur_down[key]
end

function KB.pressed(key)
  return KB.cur_down[key] and not KB.prev_down[key]
end

function KB.released(key)
  return KB.prev_down[key] and not KB.cur_down[key]
end

function KB.held(key)
  return KB.held_timer[key] >= KB.held_delay and (KB.held_timer[key] - KB.held_delay) % KB.held_interval == 0
end
