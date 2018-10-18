# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :user
  validates :description, :size, :color, :user, presence: true
end
