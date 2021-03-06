class Advertisement < ApplicationRecord
  belongs_to :category
  belongs_to :user 
  validates :name, presence: true 
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.png" 
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def belongs_to_user?(user)
    self.user_id == user.id
  end
end
