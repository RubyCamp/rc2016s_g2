class Mo < Sprite
  attr_reader :mo_dx

  def initialize(x, y, image = nil)
    image = Image.load("images/mo2")
    image.set_color_key(C_WHITE)
    super
    @mo_dx = 800
  end

  def update
    self.x += (rand(3) + 1) * @dx
    @dx = -@dx if self.x > (Window.width - self.image.width) || self.x < 0
  end
  
#  def hit(obj)
 #   @dx = -@dx
  # end
end
