class Takeaway

attr_accessor :dishes

	def initialize
 	 @dishes = {'pizza' => 10, 'curry' => 15, 'steak' => 20, 'octopus' => 30}
	end

def reciept(orders, total) 
    sub_total = orders.map { |k,v| @dishes[k]*v }.reduce { |sum,x| sum+x }
    sub_total != total ? (raise('Total wrong'); false) : true
  end
  
end 
