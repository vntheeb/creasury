class CreateInvoces < ActiveRecord::Migration[5.2]
  def change
    create_table :invoces do |t|
      t.string :name
      t.decimal :value

      t.timestamps
    end
  end
end
