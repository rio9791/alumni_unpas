class CreateDonates < ActiveRecord::Migration
  def change
    create_table :donates do |t|
      t.decimal :amount
      t.string :file_transfer
      t.string :recipient_name

      t.timestamps null: false
    end
  end
end
