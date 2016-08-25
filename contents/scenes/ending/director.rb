# coding: UTF-8

module Ending

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/end.png")
      @font=Font.new(32)
    end

    def play
      Window.draw(0, 0, @bg_img)
#      Window.draw_font(10, 10, "プランクトンゲーム得点: Plankton.pscore", @font)
      if Input.keyPush?(K_RETURN)
        exit
      end
      
    end
  end
  
end