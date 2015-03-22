#encoding: UTF-8
class Post < ActiveRecord::Base
	validates :title, :content, presence: true
	before_validation :set_content_from_title
	def set_content_from_title
		self.content = title if content.blank?
	end


	validate :title_must_start_with_T

	def title_must_start_with_T
		unless title.to_s.start_with? 'T'
			errors.add(:title, 'must start with \"T\"')			
		end
	end
end
