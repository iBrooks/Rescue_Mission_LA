class Question < ApplicationRecord
  has_many :answers, through: :question_answers
  has_many :question_answers

  belongs_to :user

  validates :user, presence: true
  validates :title, length: { minimum: 4, maximum: 100 }
end