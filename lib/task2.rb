require 'twilio-ruby'

class Takeaway

attr_reader :dishes

	def initialize
 	 @dishes = {'pizza' => 10, 'curry' => 15, 'steak' => 20, 'octopus' => 30}
	end

	def reciept(orders, total) 
    sub_total = orders.map { |k,v| @dishes[k]*v }.reduce { |sum,x| sum+x }
    sub_total != total ? (raise 'Incorrect total'; false) : (text_confirmation; true)
  end

  def delivery_time
    (Time.now + (60 * 60)).strftime("%I:%M%p")
  end

  def client
    client = Twilio::REST::Client.new account_sid, auth_token
   end

  def message
    'Orite, yer foods on its way and should be with yi aboot' + delivery_time
  end

  def text_confirmation
    client.account.sms.messages.create(
  		:from => '+441252560322',
  		:to => '+447879666184',
      :body => message
      )
  end
end 
