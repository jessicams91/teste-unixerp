class Color < ActiveRecord::Base
  belongs_to :product
  has_many :sizes
  accepts_nested_attributes_for :sizes, allow_destroy: true
  validates :name, presence: true
end
