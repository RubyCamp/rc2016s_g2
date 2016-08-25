# coding: UTF-8

module Ending

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/end.png")
      @bgm = Sound.new("sounds/result.wav")
      @bg_img2 = Image.load("images/storyback/end2.png")
      @font=Font.new(32)
      @score = Score.new
    end

    def play
      @total_score = @score.total.to_i
      # score[計算]
      if @total_score>150
       Window.draw(0, 0, @bg_img2)
      else
       Window.draw(0, 0, @bg_img)
      end
      Window.draw_font(10, 10, "生き延びた時間: #{@total_score} 秒", @font)
      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end
      if Input.keyPush?(K_RETURN)
        exit
      end
    end
  end
end