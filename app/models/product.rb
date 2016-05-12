class Product < ActiveRecord::Base
  has_many :colors
  accepts_nested_attributes_for :colors, allow_destroy: true
end
