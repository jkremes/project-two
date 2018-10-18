# frozen_string_literal: true

class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :description, :size, :color, :editable, :user

  def editable
    scope == object.user
  end
end
