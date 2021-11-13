class AddLargeImageToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :image_450x550, :string
  end
end
