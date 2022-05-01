class Item < ApplicationRecord
  belongs_to :category

    validates :name, :color, :price, :description, presence: true 
    validates :name, uniqueness: true 
end
