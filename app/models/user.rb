class User < ApplicationRecord
    has_secure_password
    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true
    has_many :legosets
    has_many :themes, through: :legosets

    def self.ordered_by_name
        self.order(name: :asc)
    end
end
