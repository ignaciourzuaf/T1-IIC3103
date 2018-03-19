class Comment < ApplicationRecord
  validates_presence_of :name, :content
  belongs_to :entry
end
