class Mo < Sprite
  attr_reader :dx

  def initialize(x, y, image = nil)
    image = Image.load("images/seamo/mo2.png")
    if rand(0..20) == 5
        image = Image.load("images/seamo/seemo.png")
    end
    image.set_color_key(C_WHITE) #白色を透過
    super #superクラスを呼び出す（引数なし）
    @dx = -1
    self.collision=[0,50,40,25,40,75] #Moの衝突範囲の設定
  end

  def update
    self.x += @dx # Moが左方向に移動する。
  end

  def hit(obj)
    #魚にぶつかったら消す
    self.vanish if obj.is_a?(Fishenemy)
  end
end
