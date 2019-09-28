class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :image
      t.text :detail
      t.timestamps
    end
  end
end
