class Micropost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order( 'created_at DESC' ) }
	validates :content, presence: true, length: { maximum: 140 }	# no minimum, does presence check for non-blank?
  validates :user_id, presence: true
end
