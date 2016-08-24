require_relative 'fish_enemy'

module Planktongame
  class Director
    def initialize
      @bg_img = Image.load("images/fish/fish-1.png")
      @chars = []
      @chars << Fishenemy.new(0, 0)
      @timer = 30 * 60
    end

    def play
      Window.draw(0, 0, @bg_img)
      Sprite.update(@chars)
      Sprite.draw(@chars)
      @timer -= 1
      if @timer <= 0
        Scene.set_current_scene(:fishgamebefore)
      end
    end
  end
end
