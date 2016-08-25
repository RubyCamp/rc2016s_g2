# coding: shift_jis

module Scene2

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/btoh.png")
      @font=Font.new(32)
      
    end

    def play
      Window.draw(0, 0, @bg_img)
      if Input.keyPush?(K_RETURN)
        Scene.set_current_scene(:birdgame)
      end
      
    end
  end
  
end