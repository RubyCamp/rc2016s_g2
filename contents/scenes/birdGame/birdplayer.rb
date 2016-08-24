class BirdPlayer < Sprite
  def initialize(x, y, image = nil)
    image = Image.load("images/bird/dove.png") #相対パスはmain.rbからのものを指定
    image.set_color_key([10, 10, 10])
    super
    @dx = 0
    @dy = 0
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
    elsif Input.key_down?(K_LEFT)
      @dx = -3
    else
      @dx = 0
    end

    self.y += @dy
    self.x += @dx
  end

  def hit(obj)
    #image = Image.load("images/fish/fishenemy_proto2.png") #相対パスはmain.rbからのものを指定
    #image.set_color_key([0, 0, 0])
  end
end
