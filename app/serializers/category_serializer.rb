class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id
  has_many :items
end
