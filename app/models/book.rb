class Book < ActiveRecord::Base

  validates :title, presence: true
  validates :authorname, presence: true
  validates :genre, presence: true
end
