class Corgi < ApplicationRecord
    belongs_to :user
    validates :name, presence: :true 
    validates :lonliness_meter, inclusion: { in: (0..100).to_a }
    validates :hunger_meter, inclusion: { in: (0..100).to_a }
    validates :happiness_meter, inclusion: { in: (0..100).to_a }
    


end
