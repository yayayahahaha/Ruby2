class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :text
      t.string :email
      t.string :text

      t.timestamps null: false
    end
  end
end
