class Item < ApplicationRecord
	has_many :likes, :counter_cache => true
	has_many :commits, :counter_cache => true
	belongs_to :user
	
	
	
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
