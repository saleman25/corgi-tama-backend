class User < ApplicationRecord
    has_many :corgis
    has_secure_password
    validates :username, :password, presence: true
    validates_uniqueness_of :username
end
