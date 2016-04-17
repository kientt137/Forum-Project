class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :sex
      t.date :birth
      t.integer :phone
      t.string :address
      t.text :introduce
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
