class User < ApplicationRecord
  has_many :answers

  has_many :questions

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true

end