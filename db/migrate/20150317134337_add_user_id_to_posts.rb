class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :user, index: true
    add_foreign_key :posts, :user_id

    #add_foreign_key :posts, :users
  end
end
