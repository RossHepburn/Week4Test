class Takeaway

attr_reader :dishes

	def initialize
 	 @dishes = {'pizza' => 10, 'curry' => 15, 'steak' => 20, 'octopus' => 30}
	end

	def reciept(orders)
		total = []
		orders.each { |order| total << dishes[order] }
		total.reduce { |sum,x| sum+x}
	end

def reciept(orders, total) 
    sub_total = orders.map { |k,v| @dishes[k]*v }
    total == sub_total.reduce { |sum,x| sum+x }
  end
end 
