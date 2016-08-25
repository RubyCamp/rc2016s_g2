require_relative 'fish_enemy'
require_relative 'sprite_mo'
require_relative 'sprite_plankton'

module PlanktonGame
  class Director
    def initialize
      @bg_img = Image.load("images/plankton/background-plankton.png")
      @chars = []
      @chars << Fishenemy.new(0, 0)
      @chars << Mo.new(700, rand(600))
  #    @chars << Plankton.new
      @timer = 5 * 60 
      @repoptime = 100
      @repoptimer = @repoptime
      @bgm = Sound.new("sounds/gamePlaying.wav")
      @bgm_played = false
      @plankton = Plankton.new
    end

    def play
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      Sprite.update(@plankton)
      Sprite.check(@chars, @chars)  #第一引数はあたる側、第二引数はあてられる側
      Sprite.check(@chars,@plankton) 
      Sprite.draw(@chars)
      Sprite.draw(@plankton)
      Sprite.clean(@chars)
      Sprite.clean(@plankton)

      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end

      @timer -= 1

     # if @timer
     #   Scene.set_current_scene(:scene1)
     # end 
      
      @repoptimer -= 1
       if @timer <= 0
          @player_pos_logs = @plankton.y
          p @player_pos_logs
          @chars << Mo.new(700, @player_pos_logs )
        end

      if @timer == 0
        @timer = 5*60
      end

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

