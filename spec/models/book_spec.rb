require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "should be invalid without a title"
  it "should be invalid without an author"
  it "should be invalid without a genre"
  it "should be invalid without a summary"
end
