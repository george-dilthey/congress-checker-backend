class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :congress, :integer
  end
end
