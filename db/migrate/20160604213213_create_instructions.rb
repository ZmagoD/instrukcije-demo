class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.references :instructor, index: true, foreign_key: true
      t.datetime :termin
      t.string :predmet
      t.decimal :cena

      t.timestamps null: false
    end
  end
end
