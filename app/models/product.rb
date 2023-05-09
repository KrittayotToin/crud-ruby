class Product < ApplicationRecord

    def self.all_product
        Product.count
    end
end



