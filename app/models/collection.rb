class Collection < ApplicationRecord
  has_many_attached :photos
  has_many :items, dependent: :destroy
  has_many :user_choices
  belongs_to :user
end
