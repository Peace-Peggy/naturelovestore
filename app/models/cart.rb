class Cart < ApplicationRecord
    has_many :cart_items, dependent: :destroy

    def add_hair_product(hair_product)
        the_current_item = cart_items.find_by(hair_product_id: hair_product.id)
    

        if the_current_item
            the_current_item.increment(:quantity)
        else
            the_current_item = cart_items.build(hair_product_id: hair_product_id)
        end
        the_current_item
    end

    def total_price
        cart_items.to_a.sum {|item| item.total_price}
    end
end
