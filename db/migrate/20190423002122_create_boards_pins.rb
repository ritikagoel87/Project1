class CreateBoardsPins < ActiveRecord::Migration[5.2]
  def change
    create_table :boards_pins, id: false do |t|
      t.integer :board_id
      t.integer :pin_id

      t.timestamps
    end
  end
end
