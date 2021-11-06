class AddMemberIdToMembers < ActiveRecord::Migration[6.1]
  def change
    add_column :members, :member_id, :string
  end
end
