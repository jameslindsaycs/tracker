class Athlete < ApplicationRecord

    validates :name, :description, :image_url, :strength, :speed, :agility, presence: true
    validates :name, uniqueness: true
    validates :strength, :speed, :agility, numericality: { greater_than_or_equal_to: 0.01 }

end
