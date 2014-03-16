class Array

	def the_ross_injector(num=0)
		sum = num
		self.each { |x| sum = yield sum, x }
		sum
	end

end