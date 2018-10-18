class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :description, :size, :color
end
