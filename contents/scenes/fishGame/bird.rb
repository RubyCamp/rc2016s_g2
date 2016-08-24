class Bird < Sprite
	attr_reader :dx

	def initialize(x, y, image = nil)
		@x, @y = x, y
		@image = Image.load("images/bird/dove1.png")
		image.set_color_key(C_WHITE)
		super
		@y = 1
		end

	def move
		@y += @dy
	end

	self.vanish if obj.is_a?(y = 800)
	end