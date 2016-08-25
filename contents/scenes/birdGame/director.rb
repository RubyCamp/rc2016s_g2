require_relative'birdplayer'
require_relative'humanenemy'
require_relative'bullet'

module BirdGame
  class Director
    def initialize
      @bg_img = Image.load("images/bird/background-bird.png")
      @chars = []
      @chars << BirdPlayer.new(200, 200)
      @chars << HumanEnemy.new(700, 400)
      @chars << HumanEnemy.new(400, 400)
      @chars << Bullet.new(400, 400, -45)
      #@timer = 30 * 60
      @repoptime = 50
      @repoptimer = @repoptime
    end

    def play
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      #Sprite.check(@chars, @chars)  #第一引数はあたる側、第二引数はあてられる側
      Sprite.draw(@chars)
      Sprite.clean(@chars)
      @repoptimer -= 1
      if @repoptimer <= 0
        @repoptimer = @repoptime
        #@repoptime -= 2
        #if @repoptime <= 10
        #  @repoptime = 10
        #end
        @chars << Bullet.new(400, 400, rand(-45..0))
      end
    end
  end
end
