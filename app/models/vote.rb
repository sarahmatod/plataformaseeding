class Vote < ApplicationRecord
  belongs_to :item
  belongs_to :user_choice
end
