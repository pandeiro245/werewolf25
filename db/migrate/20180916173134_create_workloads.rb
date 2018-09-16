class CreateWorkloads < ActiveRecord::Migration[5.2]
  def change
    create_table :workloads do |t|
      t.references :user
      t.boolean :done

      t.timestamps
    end
  end
end
