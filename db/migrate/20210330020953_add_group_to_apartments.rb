class AddGroupToApartments < ActiveRecord::Migration[6.1]
  def change
    add_reference :apartments, :group, null: falser, foreign_key: true
  end
end
