class User < ApplicationRecord
    has_many :corgis
    validates :name, presence: true

def corgis 
    {name: self.name, corgis: self.corgis}
end 

end
