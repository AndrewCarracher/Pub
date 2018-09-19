class Customer

  attr_accessor :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(drink)
    @wallet -= drink.price
  end

  def drinks_drink(drink)
    @drunkenness += drink.alcohol_level
  end

end
