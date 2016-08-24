class Space1
 def initialize
  @image = Image.load("ftob.png")
 end
 
 def play
  Window.draw(0, 0, @image)
 end
end