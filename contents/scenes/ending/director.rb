module Ending

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/end.png")
      @font=Font.new(32)
    end

    def play
      Window.draw(0, 0, @bg_img)
      if Input.keyPush?(K_RETURN)
        exit
      end
      
    end
  end
  
end