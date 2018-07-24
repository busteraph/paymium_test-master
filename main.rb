require 'json'
require './user'
require './queued_order'

data = JSON.parse(File.open('data.json').read)

users = []
data['users'].each do |u|
	user = User.new(u)
	users << user
end
# puts users.inspect

orders = []
data['queued_orders'].each do |u|
	order = QueuedOrder.new(u)
	orders << order
end

if orders.first.matching_orders?(orders.last)
	orders.each do |o| 
		o.state = 'executed'
	end	
end


puts orders.inspect


# output_file = File.open('output.json', 'w')


# output_file.write()