class Category < ActiveRecord::Base
  acts_as_nested_set
  accepts_nested_attributes_for :children
end