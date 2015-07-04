class GraduateSerializer < ActiveModel::Serializer

  attributes :id, :first_name, :last_name, :cohort, :current_job, 
  :bio, :news, :website, :picture, :linkedin, :github, :twitter, :created_at, :updated_at
end
