class AddGroupToApartments < ActiveRecord::Migration[6.1]
  def change
    add_reference :apartments, :group, null: true, foreign_key: true
  end
end
