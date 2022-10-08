class Auto < ApplicationRecord
    validates :marca, presence: true
    validates :modelo, presence: true
    validates :año, presence: true
    validates :tipo, presence: true
    validates :precio, presence: true
    validates :estado, presence: true
    
    belongs_to :concesionaria
end
