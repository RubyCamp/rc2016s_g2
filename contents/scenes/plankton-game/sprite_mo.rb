class Mo < Sprite
  attr_reader :dx

  def initialize(x, y, image = nil)
    image = Image.load("images/mo2.png")
    image.set_color_key(C_WHITE)
    super
    @dx = -1
  end

  def update
    self.x += @dx
    #self.x += (rand(3) + 1) * @dx
    #@dx = -@dx if self.x > (Window.width - self.image.width) || self.x < 0
  end

  def hit(obj)
    #魚にぶつかったら消す
    self.vanish if obj.is_a?(Fishenemy)
  end
end
