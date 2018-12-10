class DocSerializer < ActiveModel::Serializer
  attributes :uuid, :title, :posted_at, :user_name, :user_id

  def user_name
    object.user.name
  end

  def user_id
    object.user.user_id
  end
end
