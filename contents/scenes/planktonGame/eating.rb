#require_relative 'fish_enemy'
#require_relative 'sprite_mo'
#require_relative 'sprite_plankton'

module Eating
  class Director
    def initialize
      @bg_img = Image.load("images/plankton/eating.png")
      @timer = 30 * 60
    end

    def play
      Window.draw(0, 0, @bg_img)
      @timer -= 1
      if @timer
        Scene.set_current_scene(:scene1)
      end
    end
  end
end
