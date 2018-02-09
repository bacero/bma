class ChangeCellphoneTypeDateToCompetitors < ActiveRecord::Migration[5.0]
  def change
  	change_column :competitors, :cellphone, :string
  end
end
