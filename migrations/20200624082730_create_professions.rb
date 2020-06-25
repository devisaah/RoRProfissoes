class CreateProfessions < ActiveRecord::Migration[5.2]
  def change
    create_table :professions do |t|
      t.string :code 
      t.string :description
      t.string :type
      t.timestamps
    end
  end
end