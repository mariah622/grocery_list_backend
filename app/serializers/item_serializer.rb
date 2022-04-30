class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :color, :description, :category_id
  belongs_to :category
end
