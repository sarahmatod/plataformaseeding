class Vote < ApplicationRecord
  belongs_to :item, dependent: :destroy
  belongs_to :user_choice, dependent: :destroy
end
