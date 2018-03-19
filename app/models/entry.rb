class Entry < ApplicationRecord
  validates_presence_of :title, :subtitle, :content
  resourcify
  belongs_to :user, :optional => true
  has_many :comments
end
