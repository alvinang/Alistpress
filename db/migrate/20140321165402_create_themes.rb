class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :recipient_email, null: false, default: ""
      t.string :sender_email, null: false
      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""
      t.integer :template_id, null: true
      t.boolean :sent, null: false, default: false
      t.references :user

      t.timestamps
    end
    
    add_index :themes, :recipient_email
  end
end
