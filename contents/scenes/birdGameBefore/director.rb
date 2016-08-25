# coding: UTF-8

module Scene2

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/btoh.png")
      @bgm = Sound.new("sounds/title.wav")
      @bgm_played = false
      @font=Font.new(32)
      @score = Score.new()
    end

    def play
      Window.draw(0, 0, @bg_img)
      @total_score = @score.total.to_i
      Window.draw_font(10,10,"あなたが前世までいきた時間：#{@total_score}秒",@font)
      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end
      if Input.keyPush?(K_RETURN)
        @bgm.stop
        Scene.set_current_scene(:birdgame)
      end
    end
  end
end
