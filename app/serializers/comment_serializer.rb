class CommentSerializer < ActiveModel::Serializer
  belongs_to :guest
  attributes :id, :content
end
