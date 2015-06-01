class AddCreatedAndUpdatedAtToGraduates < ActiveRecord::Migration
  def change
    add_column :graduates, :created_at, :datetime 
    add_column :graduates, :updated_ated, :datetime
  end
end
