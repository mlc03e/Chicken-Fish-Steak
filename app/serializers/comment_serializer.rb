class CommentSerializer < ActiveModel::Serializer
  belongs_to :commentable, polymorphic: true
  attributes :id, :content, :commentable_id, :commentable_type, :reception_id, :guest_name

  def guest_name
    Guest.find(object.commentable_id).name
  end

  # def creator_name
  #   Creator.find(object.id).name
  # end
end
