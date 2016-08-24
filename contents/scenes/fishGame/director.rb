require_relative'bird'

class Director
  def initialize
  	 @chars = []
  	 2.times { @chars << Character.new(rand(100), -rand(400)+100, "contents/images/bird/dove-1.png") }
  	 @bg_img = Image_load("contents/images/fish/background-fish.png")
  end
  def play
  	Window.draw(0, 0, @bg_img)
  end
end