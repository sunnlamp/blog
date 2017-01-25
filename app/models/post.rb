class Post < ActiveRecord::Base
  validates :title, presence: true,
  length: { minimum: 2 }, uniqueness: true
  validates :body, presence: true, allow_nil: true
end
