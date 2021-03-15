class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :address
      t.decimal :mo_rent
      t.integer :num_beds
      t.decimal :num_baths
      t.integer :sq_ft
      t.string :url

      t.timestamps
    end
  end
end
