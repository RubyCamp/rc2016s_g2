class Bullet < Sprite
  #attr_reader :bscore

  def initialize(x, y, image = nil, deg, isRight)
    image = Image.new(10, 10).circleFill(5,5,5,[0,0,0]) #半径5pxの円
    image.set_color_key([248, 247, 243])
    # @score = Score.new
    super
    #角度を初期化(degで与えた値をradianに)
    @isUp = 2
    if isRight == @isUp
      deg -= 40
    end
    @rad = deg * Math::PI / 180
    @dx = 5 * isRight
    @dy = 5
  end

  def update
    # @score.start_time ||= Time.now
    #角度に応じてまっすぐ進む
    self.x += Math.cos(@rad) * @dx
    self.y += Math.sin(@rad) * @dy
    self.vanish if self.x >= Window.width || self.x <= 0
    #@dx = -@dx if self.x > (Window.width - self.image.width) || self.x < 0

  end

  def hit(obj)
    #image = Image.load("images/fish/fishenemymo2.png") #相対パスはmain.rbからのものを指定
    #image.set_color_key([0, 0, 0])
  end

 # def shot(obj)
  #  if obj.is_a?(BirdPlayer) #　鳥に弾があたったとき
   #   obj.vanish
      # @bscore = @score.end
    #  Scene.set_current_scene(:ending) # 次のシーンへ
    #end
  #end
end
