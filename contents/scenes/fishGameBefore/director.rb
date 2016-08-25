# coding: shift_jis

module Scene1

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/ftob.png")
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
        Scene.set_current_scene(:fishgame)
        @bgm.stop
      end
    end
  end

end
