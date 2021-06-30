class Collection < ApplicationRecord
  has_one_attached :photo

  has_many :items
  has_many :user_choices
  belongs_to :user

end
