class CommentSerializer < ActiveModel::Serializer
  belongs_to :commentable, polymorphic: true
  attributes :id, :content
end
