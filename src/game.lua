require("lib.index")

function love.load()
  Localization.init("eng")
  print(Localization.text("str1"))
  print(Localization.text("longer_key"))
end

function love.update(dt)

end

function love.draw()

end
