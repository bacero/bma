class CreateCompetitors < ActiveRecord::Migration[5.0]
  def change
    create_table :competitors do |t|
      t.string :name
      t.string :last_name
      t.string :identification
      t.references :town, foreign_key: true
      t.string :cellphone
      t.string :email
      t.boolean :habeas_data

      t.timestamps
    end
  end
end
