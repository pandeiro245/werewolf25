class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :screen_name
      t.integer :twitter_id

      t.timestamps
    end
  end
end
