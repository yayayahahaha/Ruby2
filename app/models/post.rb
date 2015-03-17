class Post < ActiveRecord::Base
  validation :title, :content, presence: true

end
