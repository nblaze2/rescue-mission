class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 40 }
  validates :body, presence: true, length: { minimum: 150 }
end
