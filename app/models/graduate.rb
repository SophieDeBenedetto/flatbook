class Graduate < ActiveRecord::Base

  validates :first_name, :last_name, :cohort, presence: true

  ActiveAdmin.register Graduate do
    permit_params :id, :first_name, :last_name, :cohort, 
    :current_job, :bio, :news, :website, :picture, :created_at, :updated_at
  end
end

