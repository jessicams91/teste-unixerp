class Size < ActiveRecord::Base
  belongs_to :color
  validates :name, :quantity, presence: true
end
