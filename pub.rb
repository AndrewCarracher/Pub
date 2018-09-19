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

  def check_drunkenness_level(customer)
    if customer.drunkenness >= 60
      return "Go home!"
    else
      return "Here's your drink!"
    end
  end

  def sells_food(food)
    @till += food.price
  end

end
