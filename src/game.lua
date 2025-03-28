require("lib.index")

function love.load()
  -- debug.debug()
  sound = Sound.new("data/sound/bell.wav")
  song_intro = Song.new("data/song/intro.ogg")
  song = Song.new("data/song/song.ogg")
  song_intro:play(1, false)
end

function love.update(dt)
  KB.update()
  if not song_intro:playing() and not song:playing() then
    song:play()
  end

  if KB.pressed("a") then sound:play() end
  if KB.pressed("p") then sound:pause() end
end

function love.draw()

end
