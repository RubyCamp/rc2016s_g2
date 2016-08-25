module Br
  class Director
    def initialize
      @bg_img = Image.load("images/storyback/br.png")
      @timer = 3 * 60
    end

    def play
      Window.draw(0, 0, @bg_img)
      @timer -= 1
      if @timer==0
        Scene.set_current_scene(:ending)
      end
    end
  end
end
