class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :person_id
      t.datetime :last_login
      t.boolean :luna
      t.string :password_digest

      t.timestamps
    end
  end
end
