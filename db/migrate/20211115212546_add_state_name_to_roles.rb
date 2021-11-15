class AddStateNameToRoles < ActiveRecord::Migration[6.1]
  def change
    add_column :roles, :state_name, :string
  end
end
