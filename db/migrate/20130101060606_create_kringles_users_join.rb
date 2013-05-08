class CreateKringlesUsersJoin < ActiveRecord::Migration
  def change
    create_table :kringles_users, id: false do |t|
      t.references :kringles
      t.references :users
    end
  end
end
