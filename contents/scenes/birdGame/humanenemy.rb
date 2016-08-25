class HumanEnemy < Sprite
  attr_reader :bullets
  def initialize(x, y, image = nil)
    image = Image.load("images/human/hunter-right.png") #相対パスはmain.rbからのものを指定
    image.set_color_key([248, 247, 243])
    super
    @dx = 2
    @bullets = []
    @bullets << Bullet.new(self.x + 100, self.y + 20, -45)
    @repoptime = 50
    @repoptimer = @repoptime
  end

  def update
    #1割の確率で移動方向変更
    if rand(9) == 5
      @dx = -@dx
    end
    @repoptimer -= 1
    if @repoptimer <= 0
      @repoptimer = @repoptime
      #@repoptime -= 2
      #if @repoptime <= 10
      #  @repoptime = 10
      #end
      @bullets << Bullet.new(self.x + 100, self.y + 20, rand(-45..0))
    end
  end

  def hit(obj)
    #image = Image.load("images/fish/fishenemymo2.png") #相対パスはmain.rbからのものを指定
    #image.set_color_key([0, 0, 0])
  end
end
