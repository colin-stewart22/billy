class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.float :price
      t.integer :prepare_time
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
