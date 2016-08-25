# coding: UTF-8

module Ending

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/end.png")
      @bgm = Sound.new("sounds/result.wav")
      @bg_img2 = Image.load("images/storyback/end2.png")
      @font=Font.new(32)
      @score=0
    end

    def play
      # score[計算]
      if @score>100
       Window.draw(0, 0, @bg_img2)
      else
       Window.draw(0, 0, @bg_img)
      end
      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end
      #score[表示]はこれ以下に
    #   p Plankton.pscore
#       Window.draw_font(10, 10, "プランクトンゲーム得点: Plankton.pscore", @font)
      if Input.keyPush?(K_RETURN)
        exit
      end
    end
  end
end