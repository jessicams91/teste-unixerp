class Size < ActiveRecord::Base
  # attr_accessible :name, :color_id
  belongs_to :color
end
