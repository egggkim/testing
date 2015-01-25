class Book < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :authorname, presence: true
  validates_length_of :authorname, :minimum => 3
  validates :genre, presence: true
  validates :summary, presence: true

end
