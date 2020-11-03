class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name,               null: false
      t.text :introduction,         null: false
      t.integer :price,             null: false
      t.integer :category_id,       null: false
      t.text :brand
      t.integer :condition_id,      null: false
      t.integer :shipping_date_id,  null: false
      t.integer :delivery_source_area_id,    null: false
      t.integer :postage_id,    null: false
      
      t.timestamps
    end
  end
end
