class AddKringleheadType < ActiveRecord::Migration
  def change
    add_column :kringles, :kringlehead_type, :string
  end
end
