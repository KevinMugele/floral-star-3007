class Mechanic < ApplicationRecord
  has_many :ride_mechanics
  has_many :rides, through: :ride_mechanics

  def self.average_age
    average(:years_of_experience)
  end
end
