class Asset < ActiveRecord::Base
  # attr_accessible :title, :body
  has_attached_file :asset
  attr_accessible :asset
end
