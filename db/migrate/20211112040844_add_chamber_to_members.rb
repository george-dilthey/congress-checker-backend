class AddChamberToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :chamber, :string
  end
end
