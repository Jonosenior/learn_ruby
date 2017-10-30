class Timer

	attr_reader :time_string

	def seconds
		@seconds = 0
	end


  def padded(number)
		if number < 10
			number = "0" + number.to_s
		else
			number = number.to_s
		end
	end
	
	def seconds=(seconds)
		hours = seconds / 3600
		seconds = seconds - (3600 * hours)
		@hours = padded(hours)

		minutes = seconds / 60
		seconds = seconds - (60 * minutes)
		@minutes = padded(minutes)

		final_seconds = seconds
		@seconds = padded(final_seconds)

		@time_string = @hours + ':' + @minutes + ':' + @seconds
	end
end

# @timer = Timer.new
# @timer.seconds


  # it "should initialize to 0 seconds" do
  #   expect(@timer.seconds).to eq(0)
