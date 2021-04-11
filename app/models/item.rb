class Item < ApplicationRecord
  has_one_attached :photo
  belongs_to :collection
  has_many :votes
end
