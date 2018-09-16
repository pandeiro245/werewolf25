class CreateWorkloads < ActiveRecord::Migration[5.2]
  def change
    create_table :workloads do |t|
      t.references :user
      t.boolean :is_done

      t.timestamps
    end
  end
end
