class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.text :title
      t.text :url
      t.text :image

      t.timestamps
    end
  end
end
