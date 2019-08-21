class Answer < ApplicationRecord
  has_one :test
  belongs_to :user
  belongs_to :question
end
