class AddProjectToGrad < ActiveRecord::Migration
  def change
    add_column :graduates, :latest_project_name, :string
    add_column :graduates, :latest_project_link, :string
    add_column :graduates, :latest_project_description, :string
  end
end
