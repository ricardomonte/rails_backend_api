class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :lastname, :email, :job, :phone, :avatar

  def avatar
    # Rails.application.routes.url_helpers.rails_representation_url(object.avatar, only_path: true)
    rails_blob_path(object.avatar, only_path: true) if object.avatar.attached?
  end
end
