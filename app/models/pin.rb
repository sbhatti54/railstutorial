class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence:true

  belongs_to :user
  validates :user_id, presence: true

 validates_attachment :avatar, :presence => true,
  :content_type => { :content_type => "image/jpg" },
  :size => { :in => 0..10.kilobytes }

  has_attached_file :photo
end
