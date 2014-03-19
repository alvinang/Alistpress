class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.references :user

      t.timestamps
    end
    
    add_index :templates, :title
  end
end
