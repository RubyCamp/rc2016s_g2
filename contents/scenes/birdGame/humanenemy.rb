class HumanEnemy < Sprite
  attr_reader :bullets
  def initialize(x, y, image = nil, isRight)
    if isRight == 1
      image = Image.load("images/human/hunter-right.png") #相対パスはmain.rbからのものを指定
    elsif isRight == -1
      image = Image.load("images/human/hunter-left.png") #相対パスはmain.rbからのものを指定
    else
      image = Image.load("images/human/hitoboat.png")
      y -= 150
    end
    image.set_color_key([255, 255, 255])
    super
    @dx = 2
    @isUp = 2
    @isRight = isRight
    @bullets = []
    @defx = 0
    @defy = 20
    @defx = 100 if @isRight == 1
    @defx = 200 if @isRight == 2
    @defy = 120 if @isRight == 2
    @repoptime = 50
    @repoptime = 30 if @isRight == -1
    @repoptimer = @repoptime
  end

  def update
    #時間差で生まれた人のときのみ移動
    if @isRight == @isUp
      self.x += @dx
    end
    #1割の確率で移動方向変更
    if rand(20) == 5
      @dx = -@dx
    end

    @repoptimer -= 1
    if @repoptimer <= 0
      @repoptimer = @repoptime
      @repoptime += rand(-10..10) - 2
      if @repoptime <= 10
        @repoptime = 10
      end
      @bullets << Bullet.new(self.x + @defx, self.y + @defy, rand(-50..-10), @isRight)
    end
  end

  def hit(obj)
    #image = Image.load("images/fish/fishenemymo2.png") #相対パスはmain.rbからのものを指定
    #image.set_color_key([0, 0, 0])
  end
end
