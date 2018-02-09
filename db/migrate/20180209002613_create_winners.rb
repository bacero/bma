class CreateWinners < ActiveRecord::Migration[5.0]
  def change
    create_table :winners do |t|
      t.references :competitor , foreign_key: true
	  t.timestamps
    end
  end
end
