require "task1"

describe Task1 do 
	
	let(:array) {[1,2,3,4,5,6]}

	it "should inject into an array" do
		expect(array.inject {|sum,x| sum+x} ).to eq 21
	end
end
