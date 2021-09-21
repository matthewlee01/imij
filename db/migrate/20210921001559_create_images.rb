class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.text :description
      t.boolean :public

      t.timestamps
    end
    add_index :images, :user_id
  end
end
