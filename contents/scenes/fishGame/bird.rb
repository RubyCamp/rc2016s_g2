class Bird < Sprite
	attr_reader :dx

	def initialize(x, y, image = nil)
		@x, @y = x, y
		image = Image.load("images/bird/dove-down-enemy.png")
		#image.set_color_key(C_WHITE)
		super
		@y = 1
		self.collision=[67,150,138,91,0,91]
	end

	def update
		self.y += @y
	    if @y > 600
	    	self.vanish
	    end
	end
end