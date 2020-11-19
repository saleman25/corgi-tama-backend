class User < ApplicationRecord
    has_many :corgis
    validates :name presence: true
end
