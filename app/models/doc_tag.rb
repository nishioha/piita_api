class DocTag < ApplicationRecord
  belongs_to :doc
  belongs_to :tag
end
