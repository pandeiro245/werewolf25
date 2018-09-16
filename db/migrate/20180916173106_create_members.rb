class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
