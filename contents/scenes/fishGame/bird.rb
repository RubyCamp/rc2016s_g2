class Bird
	def initialize(x, y, image_file)
		@x, @y = x, y
		@image = Image.load(image_file)
		@image.set_color_key([0, 0, 0])
		@y = 1
	end
	def move
		@y += @dy
	end
	def draw
		Window.draw(@x, @y, @image)
	end
end
