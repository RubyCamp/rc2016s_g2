class Ending
 def initialize
  @image = Image.load("end.png")
 end
 
 def play
  Window.draw(0, 0, @image)
 end
end