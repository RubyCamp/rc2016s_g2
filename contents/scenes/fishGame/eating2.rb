module Eating2
  class Director
    def initialize
      @bg_img = Image.load("images/fish/eating2.png")
      @timer = 3 * 60
    end

    def play
      Window.draw(0, 0, @bg_img)
      @timer -= 1
      if @timer==0
        Scene.set_current_scene(:scene2)
      end
    end
  end
end
