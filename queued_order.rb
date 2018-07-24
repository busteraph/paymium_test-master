class QueuedOrder
  attr_accessor :id, :user_id, :direction, :btc_amount, :price, :state

  def initialize(qo)
    self.user_id = qo[:user_id]
    self.direction = qo[:direction]
    self.btc_amount = qo[:btc_amount]
    self.price = qo[:price]
    self.state = "new"
  end

end
