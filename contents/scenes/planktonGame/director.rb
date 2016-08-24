require_relative 'fish_enemy'
require_relative 'sprite_mo'

module Planktongame
  class Director
    def initialize
      @bg_img = Image.load("images/plankton/background-plankton.png")
      @chars = []
      @chars << Fishenemy.new(0, 0)
      @chars << Mo.new(700, rand(600))
      #@timer = 30 * 60
      @repoptime = 100
      @repoptimer = @repoptime
    end

    def play
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      Sprite.check(@chars, @chars)  #第一引数はあたる側、第二引数はあてられる側
      Sprite.draw(@chars)
      Sprite.clean(@chars)
      #@timer -= 1
      #if @timer <= 0
    #    Scene.set_current_scene(:fishgamebefore)
    #  end
      @repoptimer -= 1
      if @repoptimer <= 0
        @repoptimer = @repoptime
        @repoptime -= 2
        if @repoptime <= 10
          @repoptime = 10
        end
        @chars << Mo.new(700, rand(600))
      end
    end
  end
end
