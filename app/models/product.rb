class Product < ActiveRecord::Base
  default_scope :order => 'name'  

  attr_accessible :description, :image_url, :name, :price, :type_of_jewelry
  validates :name, :description, :image_url, :type_of_jewelry, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :name, :uniqueness => true
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i,
                                    :message => 'must be a URL for GIF, JPG or PNG image.'}
end
