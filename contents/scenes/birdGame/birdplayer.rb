class BirdPlayer < Sprite
  attr_reader :bscore

  def initialize(x, y, image = nil)
    @imagepath = ["images/bird/dove-left.png", "images/bird/dove-right.png"]
    @bgm = Sound.new("sounds/gamePlaying.wav")
    image = Image.load("images/bird/dove-right.png") #相対パスはmain.rbからのものを指定
    image.set_color_key([10, 10, 10])
    @score=Score.new
    super
    @dx = 0
    @dy = 0
    self.collision = [66,66,15]
  end

  def update
    @score.start_time ||= Time.now
    if Input.key_down?(K_UP)
      @dy = -3
    elsif Input.key_down?(K_DOWN)
      @dy = 3
    else
      @dy = 0
    end

    if @dy == 3 && Input.key_down?(K_LSHIFT)
      @dy -= 2
    elsif @dy == -3 && Input.key_down?(K_LSHIFT)
      @dy += 2
    end

    if Input.key_down?(K_RIGHT)
      @dx = 3
      self.image = Image.load("images/bird/dove-right.png")
      #image.set_color_key([10, 10, 10])
    elsif Input.key_down?(K_LEFT)
      @dx = -3
      self.image = Image.load("images/bird/dove-left.png")
      #image.set_color_key([10, 10, 10])
    else
      @dx = 0
    end

    if @dx == 3 && Input.key_down?(K_LSHIFT)
      @dx -= 2
    elsif @dx == -3 && Input.key_down?(K_LSHIFT)
        @dx += 2
    end

    self.y += @dy
    self.x += @dx

    if self.y <= -20
      self.y = -20
    elsif self.y >= Window.height - 300
      self.y = Window.height - 300
    end

    if self.x <= -20
      self.x = -20
    elsif self.x >= Window.width - 100
      self.x = Window.width - 100
    end
  end

  def hit(obj)
    if obj.is_a?(Bullet) #　Fishenemyが当たったとき
      self.vanish
      @bscore = @score.end
      @bgm.stop
      Scene.set_current_scene(:br) # 次のシーンへ
    end
  end

end
