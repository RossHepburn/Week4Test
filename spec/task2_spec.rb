require 'task2'
 
describe Takeaway do 

	let(:takeaway) {Takeaway.new}
 
   it "should have list of prices for each dish" do
     expect(takeaway.dishes['pizza']).to eq 10 
     expect(takeaway.dishes['curry']).to eq 15 
     expect(takeaway.dishes['steak']).to eq 20 
     expect(takeaway.dishes['octopus']).to eq 30
   end

   it "should be able to calculate quantities within an order as well as the total" do 
   	Takeaway.any_instance.stub(:text_confirmation).and_return(true)
   	expect(lambda {takeaway.reciept({'pizza' => 1 , 'curry' => 2 , 'steak' => 3 , 'octopus' => 4 }, 220)}).to be_true
   end

   it "should raise error if the total in wrong" do
   	Takeaway.any_instance.stub(:text_confirmation).and_return(true)
   	expect(lambda {takeaway.reciept({'pizza' => 1 , 'curry' => 2 , 'steak' => 3 , 'octopus' => 4 }, 210)}).to raise_error(RuntimeError)

   end

    it "should send an order confirmation text" do
    Takeaway.any_instance.stub(:text_confirmation).and_return(true) 
    takeaway.reciept({'pizza' => 1 , 'curry' => 2 , 'steak' => 3 , 'octopus' => 4 }, 220)
    expect(takeaway.text_confirmation).to be_true
  end

  it "should give delivery time" do
    expect(takeaway.delivery_time).to eq((Time.now + 3600).strftime("%I:%M%p"))
  end

end