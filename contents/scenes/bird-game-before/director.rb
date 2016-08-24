# coding: shift_jis

module Scene2

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/btoh.png")
      @font=Font.new(32)
      
    end

    def play
      Window.draw(0, 0, @bg_img)
      Window.draw_font(500,300,"PUSH ENTER",@font)
      if Input.keyPush?(K_RETURN)
        Scene.set_current_scene(:ending)
      end
      
    end
  end
  
end