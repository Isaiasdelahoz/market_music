class AddubicationToadvertisements < ActiveRecord::Migration[5.0]
  def change
    add_column :advertisements, :ubication, :string 
  end
end
