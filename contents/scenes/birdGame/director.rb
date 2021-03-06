require_relative'birdplayer'
require_relative'humanenemy'
require_relative'bullet'

module BirdGame
 # attr_reader :bscore
  class Director
    def initialize
      @bg_img = Image.load("images/bird/background-bird.png")
      @bgm = Sound.new("sounds/gamePlaying.wav")
      @bgm_played = false
      @chars = []
      @humans = []
      @chars << BirdPlayer.new(300, 150)
      #左右を決める変数
      @isRight = 1
      @isLeft = -1
      @isUp = 2
      @humans << HumanEnemy.new(650, 380, @isLeft)
      @humans << HumanEnemy.new(60, 380, @isRight)
      @enemypoptimer = 60 * 5
      @isEnemypop = false
 #     @score = Score.new
    end

    def play
      if @enemypoptimer <= 0
        @humans << HumanEnemy.new(150, 380, @isUp)
        @enemypoptimer = 60 * 4
      else
        @enemypoptimer -= 1
      end
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      Sprite.update(@humans)
      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end
      @humans.each do |human|
        Sprite.update(human.bullets)
        Sprite.check(human.bullets, @chars)
        Sprite.draw(human.bullets)
        Sprite.clean(human.bullets)
      end
      Sprite.check(@chars, @chars)  #第一引数はあたる側、第二引数はあてられる側
      Sprite.draw(@humans)
      Sprite.draw(@chars)
      Sprite.clean(@chars)
    end
  end
end
