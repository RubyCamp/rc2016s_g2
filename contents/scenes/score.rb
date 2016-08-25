class Score 
   attr_reader :score
   attr_accessor :start_time
 
	def initialize
		@score = 0
	end


	def end
		@end_time=Time.now
		@score = @end_time - @start_time
		p @score
	end
end


