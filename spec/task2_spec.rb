require 'task2'
 
describe Takeaway do 
 
   it "should have list of prices for each dish" do
     expect(Takeaway::Dishes[:pizza]).to eq(10)
     expect(Takeaway::Dishes[:curry]).to eq(15)
     expect(Takeaway::Dishes[:steak]).to eq(20)
     expect(Takeaway::Dishes[:octopus]).to eq(30)
   end

   
end