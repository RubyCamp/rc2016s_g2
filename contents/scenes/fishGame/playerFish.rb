# playerFish.rb
class PlayerFish < Sprite

	def initialize(x, y, image_file)
		image = Image.load(image_file)
	  	@bgm = Sound.new("sounds/gamePlaying.wav")
		@dx = 0
		super(x,y, image)
		self.collision=[0,27,99,72]
	end

	def update
		if Input.key_down?(K_LEFT)
		  @dx = -3
		elsif Input.key_down?(K_RIGHT)
		  @dx = 3
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

	def hit(obj)
		if obj.is_a?(Bird)
		self.vanish
		@bgm.stop
		Scene.set_current_scene(:eating2)
		end
	end

	def score
		@time += 1
		@score += @time
	end
end