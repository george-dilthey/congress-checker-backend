class AddImage225x275ToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :image_225x275, :string
  end
end
