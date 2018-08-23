class Post < ApplicationRecord
  audited
  validates_presence_of :title, :message
  has_many_attached :files
end
