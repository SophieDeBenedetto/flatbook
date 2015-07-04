class AddSocialLinksToGrad < ActiveRecord::Migration
  def change
    add_column :graduates, :linkedin, :string
    add_column :graduates, :twitter, :string
    add_column :graduates, :github, :string
  end
end
