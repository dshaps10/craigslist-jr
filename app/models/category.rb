class Category < ActiveRecord::Base
  has_many :articles
  validates :name, presence: true #For possible future inclusion of Admin category creation
end
