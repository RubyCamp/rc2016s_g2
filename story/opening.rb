class Opening
 def initialize
  @image = Image.load("back1.png")
 end
 
 def play
  Window.draw(0, 0, @image)
 end
end