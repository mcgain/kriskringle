class AddKringles < ActiveRecord::Migration
  def change
    create_table :kringles do |t|
      t.belongs_to :kringlehead
    end
  end

end
