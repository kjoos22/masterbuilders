class Theme < ApplicationRecord

    def self.ordered_by_name
        self.order(name: :asc)
    end
end
