class Customer
  attr_reader :name, :wallet, :drinks

  def initialize(name, wallet, drinks)
    @name = name
    @wallet = wallet
    @drinks = drinks
  end
end
