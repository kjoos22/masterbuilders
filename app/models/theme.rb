class Theme < ApplicationRecord
    has_many :legosets
    validates :name, presence: true, uniqueness: true
    def self.ordered_by_name
        self.order(name: :asc)
    end

    
end
