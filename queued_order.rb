class QueuedOrder
  attr_accessor :id, :user_id, :direction, :btc_amount, :price, :state

  def initialize(qo)
    self.user_id = qo['user_id']
    self.direction = qo['direction']
    self.btc_amount = qo['btc_amount']
    self.price = qo['price']
    self.state = "new"
  end

  def matching_orders? order
  	(self.direction == 'buy' && order.direction == 'sell') || 
  		(self.direction == 'sell' && order.direction == 'buy') &&
  			self.price == order.price
  end	

end
