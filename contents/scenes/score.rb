class Score 
   attr_reader :score
 
	def initialize
		@score = 0
		@start_time=Time.now
	end

	def end
		@end_time=Time.now
		@score=@end_time-@start_time
		p @score
	end
end


