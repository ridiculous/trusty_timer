class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :user_id
      t.string :name
      t.string :title
      t.string :phone
      t.string :address
      t.string :email
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
