class Customer

  attr_accessor :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buy_drink(drink)
    @wallet -= drink.price
  end

end
