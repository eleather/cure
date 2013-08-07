class Supplement < ActiveRecord::Base
  attr_accessible :description, :dose, :name, :supplement_group_id
end
