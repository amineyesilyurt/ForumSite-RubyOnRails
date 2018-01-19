class AddAnketIdToAnkets < ActiveRecord::Migration
  def change
    add_column :ankets, :anket_id, :integer
  end
end
