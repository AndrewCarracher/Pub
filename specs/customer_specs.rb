require 'minitest/autorun'
require 'minitest/rg'
require_relative '../customers'

class TestCustomers < MiniTest::Test

  def setup
    @customer1 = Customer.new("Andrew", 10)
    @customer2 = Customer.new("Katie", 15)
  end

  def test_customer_has_name
    assert_equal("Andrew", @customer1.name)
  end

  def test_customer_has_money
    assert_equal(15, @customer2.wallet)
  end

end
