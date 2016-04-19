class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  # validates :content, presence: true,
  #           length: {in: 30..150}

end
