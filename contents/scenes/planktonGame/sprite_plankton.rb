
class Plankton < Sprite

  def initialize
    image = Image.load("images/plankton/new_virus(black).png")
    @bgm = Sound.new("sounds/gamePlaying.wav")
    image.set_color_key(C_WHITE)
    @dy=0
    super(500,300,image)
  end

  def update
    if Input.key_down?(K_UP)
       @dy = -1
     elsif Input.key_down?(K_DOWN)
       @dy = 1
     else @dy = 0
    end

    self.y += @dy #移動

    if self.y <= -10 # 範囲の設定
      self.y = -10
    elsif self.y >= Window.height - 20
      self.y = Window.height - 20
    end
  end




  # 敵に当たったとき
  def hit(obj)
  	self.x=self.x + obj.dx if obj.is_a?(Mo) # Moが当たったとき
  	#Moのサイズは、256*256（デフォルト）
    if obj.is_a?(Fishenemy) #Fishenemyが当たったとき
      vanish # Moのオブジェクトを消す
      @bgm.stop
      Scene.set_current_scene(:eating) # 次のシーンへ
    end
  end
end
