class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def sell_drink(drink)
    @till += drink.price
  end

  def check_age(customer, drink)
    if customer.age >= 18
      customer.buy_drink(drink)
      sell_drink(drink)
    else
      return "Too young!"
    end
  end


end
