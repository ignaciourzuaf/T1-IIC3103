class Entry < ApplicationRecord
  validates_presence_of :title, :content
  resourcify
  belongs_to :user, :optional => true
  has_many :comments, dependent: :destroy
end
