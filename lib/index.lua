utils = {
  approx_equal = function (value1, value2, tolerance)
    tolerance = tolerance or 0.000001
    return math.abs(value1 - value2) <= tolerance
  end,
  round = function(value)
    return value >= 0 and math.floor(value + 0.5) or math.ceil(value - 0.5)
  end,
  clone = function(table)
    local clone = setmetatable({}, getmetatable(table))
    for k, v in pairs(table) do
      clone[k] = v
    end
    return clone
  end,
  split = function(str, separator)
    local t = {}
    for s in str:gmatch("[^" .. separator .. "]+") do
      table.insert(t, s)
    end
    return t
  end
}

require("lib.geometry.map")
require("lib.geometry.rectangle")
require("lib.geometry.vector")

require("lib.graphics.image")
require("lib.graphics.sprite")
require("lib.graphics.tileset")

require("lib.input.keyboard")
require("lib.input.mouse")

require("lib.physics.block")
require("lib.physics.game_object")
require("lib.physics.physics")
require("lib.physics.ramp")

require("lib.text.font")
require("lib.text.image_font")
require("lib.text.text_helper")
