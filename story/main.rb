# coding: shift_jis

require 'dxruby'
require_relative 'opening'
require_relative 'space1'
require_relative 'space2'
require_relative 'ending'

Window.width = 800  # 32px * 25マス
Window.height = 600 # 32px * 17マス + 画面下部のスペース(54px)

font=Font.new(32)

open = Opening.new
spa1 = Space1.new
spa2 = Space2.new
endi = Ending.new

Window.loop do
  open.play
  Window.draw_font(32,32,"PUSH ESC",font)
  break if Input.key_push? K_ESCAPE
end

Window.loop do
  spa1.play
  break if Input.key_push? K_ESCAPE
end

Window.loop do
  spa2.play
  break if Input.key_push? K_ESCAPE
end

Window.loop do
  endi.play
  break if Input.key_push? K_ESCAPE
end