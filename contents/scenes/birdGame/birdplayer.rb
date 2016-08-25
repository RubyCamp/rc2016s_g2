class BirdPlayer < Sprite
  def initialize(x, y, image = nil)
    @imagepath = ["images/bird/dove-left.png", "images/bird/dove-right.png"]
    image = Image.load("images/bird/dove-right.png") #相対パスはmain.rbからのものを指定
    image.set_color_key([10, 10, 10])
    super
    @dx = 0
    @dy = 0
    self.collision = [66,66,15]
  end

  def update
    if Input.key_down?(K_UP)
      @dy = -3
    elsif Input.key_down?(K_DOWN)
      @dy = 3
    else
      @dy = 0
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
    #if obj.is_a?(BirdPlayer) #　Fishenemyが当たったとき
    #  self.vanish
    #  Scene.set_current_scene(:eating) # 次のシーンへ
    #end
  end

end
