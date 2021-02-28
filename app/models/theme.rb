class Theme < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    def self.ordered_by_name
        self.order(name: :asc)
    end

    
end
