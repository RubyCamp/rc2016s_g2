class Plankton < Sprite

  def initialize
    image = Image.load("images/plankton/new_virus(black).png")
    image.set_color_key(C_WHITE)
    @dy=0
    super(360,400,image)
  end

  def update
    @dy = -1 if Input.key_push?(K_UP) 
    @dy = 1  if Input.key_push?(K_DOWN) 
    self.y += @dy
  end

  # 敵に当たったとき
  def hit(obj)
  	self.x=self.x + obj.dx if obj.is_a?(Mo) # Moが当たったとき
  	#　Moのサイズは、256*256（デフォルト）
    if obj.is_a?(Fishenemy) #　Fishenemyが当たったとき
      vanish
      Scene.set_current_scene(:eating)
    end
  end
end

