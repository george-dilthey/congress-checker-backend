class AddStateNameToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :state_name, :string
  end
end
