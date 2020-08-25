class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates  :name, presence: true 
  validates  :text, presence: true
end
