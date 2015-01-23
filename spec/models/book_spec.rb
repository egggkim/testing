require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:book)).to be_valid
  end

  it "is invalid without a title" do
    expect(FactoryGirl.build(:book, title: nil)).to be_invalid
  end

  it "cannot be created with a title that already exists" do
    book = (FactoryGirl.create(:book, title: "MyString"))
    book2 = (FactoryGirl.build(:book, title: "MyString"))
    expect(book2).to be_invalid
  end

  it "it returns a book title as a string" do
    expect(FactoryGirl.build(:book).title).to be_an_instance_of(String)
  end

  it "is invalid without an author name" do
    expect(FactoryGirl.build(:book, authorname: nil)).to be_invalid
  end

  it "has an author name longer than three characters" do
    expect(FactoryGirl.build(:book, authorname: "hi")).to be_invalid
  end

  it "is invalid without a genre" do
    expect(FactoryGirl.build(:book, genre: nil)).to be_invalid
  end

  it "is invalid without a summary" do
    expect(FactoryGirl.build(:book, summary: nil)).to be_invalid
  end
end
