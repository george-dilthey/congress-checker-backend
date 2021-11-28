class CreateChecklistMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :checklist_members do |t|
      t.references :checklist, null: false, foreign_key: true
      t.string :member_mid, references: :members

      t.timestamps
    end
  end
end
