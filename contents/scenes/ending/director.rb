# coding: UTF-8

module Ending

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/end.png")
      @font=Font.new(32)
      @score = Score.new
    end

    def play
      Window.draw(0, 0, @bg_img)
       @total_score = @score.total.to_i
      # p @total_score
      Window.draw_font(10, 10, "得点: #{@total_score} ", @font)
      if Input.keyPush?(K_RETURN)
        exit
      end
      
    end
  end
  
end