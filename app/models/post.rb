#encoding: UTF-8
class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validate :title_must_start_with_x
  before_validation :set_content_from_title


  def title_must_start_with_x
    unless title.to_s.start_with? 'X'
      errors.add :title, 'must start with "X"'
    end
  end

  def set_content_from_title
    self.content = title if content.blank?
  end



=begin
  validate do
    unless title.to_s.start_with? 'X'
      errors.add :title, 'must start with "X"'
    end
  end
=end

  
end
