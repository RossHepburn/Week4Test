require 'task2'
 
describe Takeaway do 

	let(:takeaway) {Takeaway.new}
 
   it "should have list of prices for each dish" do
     expect(takeaway.dishes['pizza']).to eq 10 
     expect(takeaway.dishes['curry']).to eq 15 
     expect(takeaway.dishes['steak']).to eq 20 
     expect(takeaway.dishes['octopus']).to eq 30
   end

   it "should calculate the total sum of the order" do
   	expect(takeaway.reciept(['pizza' , 'curry' , 'steak' , 'octopus'])).to eq 75
   end

end