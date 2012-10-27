class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :price, :type_of_jewelry
end
