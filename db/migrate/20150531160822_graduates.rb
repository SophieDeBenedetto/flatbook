class Graduates < ActiveRecord::Migration
  def change
    create_table :graduates do |t|
      t.string :first_name
      t.string :last_name
      t.string :cohort
      t.string :current_job
      t.text :bio
      t.text :news
      t.string :website
    end
  end
end
