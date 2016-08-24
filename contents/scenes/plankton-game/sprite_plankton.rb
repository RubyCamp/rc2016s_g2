class Plancton < Sprite

  def initialize
    image = Image.load(image_path("images\Plancton\virus(black)"))
    image.set_color_key(C_WHITE)
    @dx=450
    @dy=300
    super
  end

  def update
    @dy = -1 if Input.key_push?(K_UP) 
    @dy = 1  if Input.key_push?(K_DOWN) 
    move_cell(dx: @dx, dy: @dy)
  end

  # 敵に当たったとき
  def attacked(obj)
  	@dx=self.x-obj.dx if obj.is_a?(Mo) # Moが当たったとき
  	#　Moのサイズは、256*256（デフォルト）
    if obj.is_a?(Fishenemy) #　Fishenemyが当たったとき
      vanish
      return
    end
  end
end
