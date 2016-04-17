class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false   #create auto 2 column called create_at and update_at
    end
  end
end
