class Concesionarium < ApplicationRecord
    has_many :autos, dependent: :restrict_with_exception
end
