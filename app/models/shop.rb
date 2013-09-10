class Shop < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :items
  has_many :follows
  has_many :following_users, :through => :follows, :source => :user
  has_attached_file :picture, :styles => { :original => '300x300>', :small => '50x50>' }
  accepts_nested_attributes_for :items, :allow_destroy => true

  acts_as_mappable
  self.per_page = 6 
end
