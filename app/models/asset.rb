class Asset < ActiveRecord::Base
  belongs_to :ticket
  has_attached_file :asset, :path => (Rails.root + "files/:id").to_s,
                            :url => "/files/:id"
  # attr_accessible :title, :body
  attr_accessible :asset
end
