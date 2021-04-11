class Collection < ApplicationRecord
  has_many :items
  has_many :user_choices
  belongs_to :user
end
