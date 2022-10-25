require "rails_helper"

describe Author, type: :model do
  before(:each) do |example|
    # TODO: extract example name
    # pp example.metadata
    path = example.metadata[:example_group][:file_path]
    Rails.logger.info("\n=== BEGIN TEST #{path} ===")
  end
  after(:each) do
    Rails.logger.info("=== END TEST ===\n")
  end
  describe "#destroy!" do
    fit "remove an author with no books" do
      author = Author.find_by(name: "John Doe")
      author.destroy!
    end

    it "remove an author with a single book" do
      author = Author.find_by(name: "Julian James McKinnon")
      author.destroy!
    end

    it "remove an author with multiple books" do
      author = Author.find_by(name: "Andrew Park")
      author.destroy!
    end
  end

  describe "#delete" do
    it "remove an author with no books" do
      author = Author.find_by(name: "John Doe")
      author.delete
    end

    it "remove an author with a single book" do
      author = Author.find_by(name: "Julian James McKinnon")
      author.delete
    end

    it "remove an author with multiple books" do
      author = Author.find_by(name: "Andrew Park")
      author.delete
    end
  end
end
