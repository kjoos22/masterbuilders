class Legoset < ApplicationRecord
    #belongs_to :user

    def self.ordered_by_name
        self.order(name: :asc)
    end
end
