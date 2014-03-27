class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task, null: false
      t.references :user

      t.timestamps
    end    
  end
end
