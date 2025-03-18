utils = {
  approx_equal = function (value1, value2, tolerance)
    tolerance = tolerance or 0.000001
    return math.abs(value1 - value2) <= tolerance
  end,
  clone = function(table)
    local clone = setmetatable({}, getmetatable(table))
    for k, v in pairs(table) do
      clone[k] = v
    end
    return clone
  end
}


require("lib.keyboard")
require("lib.mouse")

require("lib.rectangle")
require("lib.vector")
require("lib.sprite")

require("lib.physics")
require("lib.block")
require("lib.ramp")
require("lib.game_object")
