class Book < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :authorname, presence: true
  validates :genre, presence: true
  validates :summary, presence: true

end
