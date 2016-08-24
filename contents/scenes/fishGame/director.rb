require_relative'bird'
require_relative'playerFish'
module FishGame
	class Director
	  def initialize
	  	 @chars = []
	  	 2.times { @chars << Bird.new(rand(100), -rand(400)+100, "images/bird/dove-1.png") }
	  	 @chars << PlayerFish.new(300, 350, "images/fish/player-fish.png" )
	  	 @bg_img = Image.load("images/fish/background-fish.png")
	  	 @score = 0
	  	 @time = Time.now
	  end

	  def play
	  	Window.draw(0, 0, @bg_img)
	  	Sprite.update(@chars)
	  	Sprite.draw(@chars)
	  end
	end
end
