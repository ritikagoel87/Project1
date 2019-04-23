class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :fname
      t.text :lname
      t.integer :dob
      t.text :email
      t.text :password
      t.string :admin
      t.string :boolean

      t.timestamps
    end
  end
end
