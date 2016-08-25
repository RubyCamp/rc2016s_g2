require_relative'birdplayer'
require_relative'humanenemy'
require_relative'bullet'

module BirdGame
  class Director
    def initialize
      @bg_img = Image.load("images/bird/background-bird.png")
      @bgm = Sound.new("sounds/gamePlaying.wav")
      @bgm_played = false
      @chars = []
      @humans = []
      @chars << BirdPlayer.new(200, 200)
      #左右を決める変数
      @isRight = 1
      @isLeft = -1
      @humans << HumanEnemy.new(650, 380, @isLeft)
      @humans << HumanEnemy.new(60, 380, @isRight)
      #@chars << Bullet.new(120, 400, -45)
      #@timer = 30 * 60
      #@repoptime = 50
      #@repoptimer = @repoptime
    end

    def play
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      Sprite.update(@humans)
      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end
      @humans.each do |human|
        Sprite.update(human.bullets)
        Sprite.draw(human.bullets)
        Sprite.clean(human.bullets)
      end
      #Sprite.check(@chars, @chars)  #第一引数はあたる側、第二引数はあてられる側
      Sprite.draw(@humans)
      Sprite.draw(@chars)
      Sprite.clean(@chars)
      #@repoptimer -= 1
      #if @repoptimer <= 0
      #  @repoptimer = @repoptime
        #@repoptime -= 2
        #if @repoptime <= 10
        #  @repoptime = 10
        #end
        #@chars << Bullet.new(120, 400, rand(-45..0))
      #end
    end
  end
end
