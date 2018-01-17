class Answer < ApplicationRecord
  belongs_to :question

  belongs_to :user

  validates :question, presence: true
  validates :user, presence: true
  validates :body, length: { minimum: 20 }
end