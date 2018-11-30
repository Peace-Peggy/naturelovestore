class CartItem < ApplicationRecord
  belongs_to :hair_product
  belongs_to :cart
end
