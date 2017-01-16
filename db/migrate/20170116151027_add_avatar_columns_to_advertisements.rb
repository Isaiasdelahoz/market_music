class AddAvatarColumnsToAdvertisements < ActiveRecord::Migration[5.0]
def up
    add_attachment :advertisements, :avatar
  end

  def down
    remove_attachment :advertisements, :avatar
  end
end
