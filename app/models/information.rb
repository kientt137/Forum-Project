class Information < ActiveRecord::Base
  belongs_to :user
  validates :phone, numericality: true,
            length: {in: 10..11}
end
