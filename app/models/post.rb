#encoding: UTF-8
class Post < ActiveRecord::Base
	has_and_belongs_to_many :tags
	validates :title, :content, presence: true
	before_validation :set_content_from_title
	# validate :title_must_start_with_T
	
	def set_content_from_title
		self.content = title if content.blank?
	end


	def title_must_start_with_T
		unless title.to_s.start_with? 'T'
			errors.add(:title, 'must start with \"T\"')			
		end
	end

	belongs_to :user
end
