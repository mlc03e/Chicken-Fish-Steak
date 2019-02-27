class CommentSerializer < ActiveModel::Serializer
  belongs_to :commentable, polymorphic: true
  attributes :id, :content, :commentable_id, :commentable_type, :reception_id
end
