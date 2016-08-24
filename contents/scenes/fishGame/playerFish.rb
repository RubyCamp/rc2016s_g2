# playerFish.rb
class PlayerFish < Sprite

	def initialize(x, y, image_file)
		image = Image.load(image_file)
		@dx = 0
		super(x,y, image)
	end

	def update
		if Input.key_down?(K_LEFT)
		  @dx = -1
		elsif Input.key_down?(K_RIGHT)
		  @dx = 1
		else
		  @dx = 0
		end
		self.x += @dx

		if self.x <= 10
			self.x = 10
		elsif self.x >= 700
			self.x = 700
		end

		# self.x += @dx
	end

	def score
		@time += 1
		@score += @time
	end
end