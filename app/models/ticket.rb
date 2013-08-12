class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_attached_file :asset
  attr_accessible :description, :title, :asset
  validates :title, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 10 }

end
