class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.boolean :visibility
      t.string :slug, unique: true

      t.timestamps null: false
    end
  end
end
