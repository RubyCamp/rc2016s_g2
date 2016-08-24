require_relative'bird'
module FishGame
	class Director
	  def initialize
	  	 @chars = []
	  	 @chars << BirdPlayer.new(rand(100), -rand(400)+100)
	  	 @bg_img = Image.load("images/fish/background-fish.png")
	  end
		
	  def play
	  	Window.draw(0, 0, @bg_img)
	  	Sprite.update(@chars)
	  	Sprite.draw(@chars)
	  end
	end
end
