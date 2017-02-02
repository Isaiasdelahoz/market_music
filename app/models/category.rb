class Category < ApplicationRecord
  has_many :advertisements, dependent: :destroy
  validates :name, presence: true 
  validates :name, uniqueness: true
end