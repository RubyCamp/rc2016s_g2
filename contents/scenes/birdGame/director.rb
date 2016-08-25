require_relative'birdplayer'
require_relative'humanenemy'

module BirdGame
  class Director
    def initialize
      @bg_img = Image.load("images/bird/background-bird.png")
      @chars = []
      @chars << BirdPlayer.new(200, 200)
      @chars << HumanEnemy.new(700, 400)
      @chars << HumanEnemy.new(400, 400)
      #@timer = 30 * 60
      #@repoptime = 100
      #@repoptimer = @repoptime
    end

    def play
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      #Sprite.check(@chars, @chars)  #第一引数はあたる側、第二引数はあてられる側
      Sprite.draw(@chars)
      #Sprite.clean(@chars)
      #@timer -= 1
      #if @timer <= 0
    #    Scene.set_current_scene(:fishgamebefore)
    #  end
    end
  end
end
