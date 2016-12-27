class Answer < ApplicationRecord
  validates :title, presence: true, length: { minimum: 15 }
  validates :body, presence: true, length: { minimum: 50 }
  validates :username, presence: true

  belongs_to :question
end
