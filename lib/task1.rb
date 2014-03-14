class Array


  def the_ross_injector
    sum = 0
    self.reduce { |sum,x| sum + x}
  end
end