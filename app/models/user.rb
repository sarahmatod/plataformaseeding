class User < ApplicationRecord
  has_many :votes
  has_many :items, through: :votes
  has_many :collections
  has_many :user_choices
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
