class Tag < ApplicationRecord
  has_many :docs, through: :doc_tags
  has_many :doc_tags
end
