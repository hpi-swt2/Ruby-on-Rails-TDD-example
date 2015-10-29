class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
