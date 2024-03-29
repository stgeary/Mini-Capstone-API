require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "is_discounted" do
    product = Product.new(price: 11)
    assert_equal false, product.is_discounted

    product = Product.new(price: 1)
    assert_equal true, product.is_discounted
  end

  test "tax" do
    product = Product.new(price: 100)
    assert_in_delta 75, product.tax
  end

  test "total" do
    product = Product.new(price: 100)
    assert_in_delta 175, product.total
  end
end
