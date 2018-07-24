require 'json'
require './user'
require './queued_order'

data = JSON.parse(File.open('data.json').read)

users = []
data['users'].each do |u|
	user = User.new(u)
	users << user
end

orders = []
data['queued_orders'].each do |u|
	order = QueuedOrder.new(u)
	orders << order
end

if orders.first.matching_orders?(orders.last)
	orders.each do |o| 
		o.state = 'executed'
	end	
  # - the seller btc_balance is decreased by the orders btc_amount
 	users.each do |u|
  	if u.id == order.first.user_id
  		# u.btc_amount
  	end	
	end
end


# puts orders.inspect


# output_file = File.open('output.json', 'w')


# output_file.write()