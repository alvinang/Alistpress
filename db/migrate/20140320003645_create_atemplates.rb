class CreateAtemplates < ActiveRecord::Migration
  def change
    create_table :atemplates do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :user
      
      t.timestamps
    end
    
    add_index :atemplates, :title    
  end
end
