require_relative'bird'
require_relative'playerFish'

module FishGame
	class Director
	  def initialize
	  	 @chars = []
	  	 @bg_img = Image.load("images/fish/background-fish.png") 
	  	 @chars << PlayerFish.new(300, 350, "images/fish/player-fish.png" )
	  	 @chars << Bird.new(rand(800), 0)
	  	 @score = 0
	  	 @time = Time.now
	  	 @repoptime = 100
	  	 @repoptimer = @repoptime 
	  end

	  def play
	  	Window.draw(0, 0, @bg_img)
	  	Sprite.update(@chars)
	  	Sprite.check(@chars,@chars)
	  	Sprite.draw(@chars)

	  	@repoptimer -= 1
        if @repoptimer <= 0
          @repoptimer = @repoptime
          @repoptime -= 2
        if @repoptime <= 10
          @repoptime = 10
        end
       @chars << Bird.new(rand(800), 0)
      end
	  end
	end
end
