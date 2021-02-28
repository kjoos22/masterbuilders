class Legoset < ApplicationRecord
    #belongs_to :user
    validates :name, :number_of_pieces, :age, :price, presence: true
    validates :number_of_pieces, :age, :price, numericality: true

    def self.ordered_by_name
        self.order(name: :asc)
    end

    def display_price
        display_price = self.price.to_s.split(".")
        if display_price[1].length == 1
            display_price[1] << "0"
        elsif display_price[1].length == 0
            display_price[1] << "00"
        end
        display_price.join(".")        
    end
end
