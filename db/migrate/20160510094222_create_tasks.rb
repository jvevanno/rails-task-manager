class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status

      t.timestamps null: false
    end
  end
end

class AddTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :name, :string
  end
end
