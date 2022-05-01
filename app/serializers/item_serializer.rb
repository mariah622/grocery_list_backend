class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :color, :description, :id, :category_id
  belongs_to :category
end
