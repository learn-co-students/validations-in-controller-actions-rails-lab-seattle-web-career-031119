class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not either Fiction or Non-Fiction" }
  validates :content, length: { minimum: 100 }
end
