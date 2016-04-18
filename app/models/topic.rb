class Topic < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :title, presence: true,
            length: {in: 30..150}
  validates :content, presence: true
end
