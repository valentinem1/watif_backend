class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :item_id, :user_id, :created_at, :username
  
  def username
    self.object.user.username
  end

end