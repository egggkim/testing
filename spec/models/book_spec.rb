require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:book)).to be_valid
  end

  it "is invalid without a title" do
    expect(FactoryGirl.build(:book, title: nil)).to be_invalid
  end

  it "is invalid without an author name" do
    expect(FactoryGirl.build(:book, authorname: nil)).to be_invalid
  end
end
