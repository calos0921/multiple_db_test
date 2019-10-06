class CreateUser4s < ActiveRecord::Migration
  def change
    create_table :user4s do |t|
      t.string :name
      t.string :email
      t.string :tel

      t.timestamps null: false
    end
  end
end
