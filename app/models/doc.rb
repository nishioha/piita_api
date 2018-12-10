class Doc < ApplicationRecord
  belongs_to :user
  has_many :doc_tags
  has_many :tags, through: :doc_tags
end
