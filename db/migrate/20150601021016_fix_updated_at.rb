class FixUpdatedAt < ActiveRecord::Migration
  def change
    remove_column :graduates, :updated_ated
    add_column :graduates, :updated_at, :datetime
  end
end
