class CreateUser3s < ActiveRecord::Migration
  def change
    create_table :user3s do |t|
      t.string :name
      t.string :email
      t.string :tel

      t.timestamps null: false
    end
  end
end
