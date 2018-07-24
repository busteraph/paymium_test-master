class User
  attr_accessor :id, :btc_balance, :eur_balance

  def initialize(user)
    self.id = user[:id]
    self.btc_balance = user[:btc_balance]
    self.eur_balance = user[:eur_balance]
  end

end
