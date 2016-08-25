class Score

   attr_reader :score
   attr_accessor :start_time
 
   @@total = 0

	def initialize
		@score = 0
	end


	def end
		@end_time=Time.now
		@score = @end_time - @start_time
		@@total = @@total + @score
		p @score
		p @@total
	end

	def total
		return @@total
	end
end


