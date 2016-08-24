require_relative'bird'
module FishGame
	class Director
	  def initialize
	  	 @chars = []
	  	 2.times { @chars << Bird.new(rand(100), -rand(400)+100, "images/bird/dove-1.png") }
	  	 @bg_img = Image.load("images/fish/background-fish.png")
	  end
	  def play
	  	Window.draw(0, 0, @bg_img)
	  	Sprite.update(@chars)
	  	Sprite.draw(@chars)
	  end
	end
end