class Category < ApplicationRecord
  has_many :advertisements
  validates :name, presence: true 
  validates :name, uniqueness: true
end