class Article < ActiveRecord::Base
  belongs_to :category
  validates :title, :body, presence: true
end
