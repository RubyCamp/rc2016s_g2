# coding: shift_jis

module Title

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/back1.png")
      @font=Font.new(32)
      
    end

    def play
      Window.draw(0, 0, @bg_img)
      if Input.keyPush?(K_RETURN)
        Scene.set_current_scene(:planktongame)
      end
      
    end
  end
  
end
