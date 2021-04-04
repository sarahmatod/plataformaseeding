class UserChoice < ApplicationRecord
  belongs_to :collection
  belongs_to :user
  has_many :votes
  has_many :items, through: :votes
end
