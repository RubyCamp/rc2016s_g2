class Fishenemy < Sprite
  def initialize(x, y, image = nil)
    image = Image.load("images/fish/sdfa.png") #相対パスはmain.rbからのものを指定
    image.set_color_key([255, 255, 255])
    super
    @dx = 1
  end

  def hit(obj)
    image = Image.load("images/fish/fishenemy_proto2.png") #相対パスはmain.rbからのものを指定
    image.set_color_key([0, 0, 0])
  end
end

