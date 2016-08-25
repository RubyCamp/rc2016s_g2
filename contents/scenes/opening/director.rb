# coding: shift_jis

module Title

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/back1.png")
      @bgm = Sound.new("sounds/title.wav")
      @bgm_played = false
      @font=Font.new(32)
    end

    def play
      Window.draw(0, 0, @bg_img)
      unless @bgm_played
        @bgm.play
        @bgm_played = true
      end
      if Input.keyPush?(K_RETURN)
        @bgm.stop
        Scene.set_current_scene(:planktongame)
      end
    end
  end
end