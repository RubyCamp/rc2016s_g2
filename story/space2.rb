class Space2
 def initialize
  @image = Image.load("btoh.png")
 end
 
 def play
  Window.draw(0, 0, @image)
 end
end